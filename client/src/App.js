import React, {Component} from 'react'
import './App.css';

import { Route, Switch, withRouter } from 'react-router-dom'

import API from './data/API'

import Header from './containers/Header'
import HomePage from './containers/HomePage';
import FarmerProfile from './containers/FarmerProfile'
import CustomerProfile from './containers/CustomerProfile'
import Signin from './containers/Signin'
import Signup from './containers/Signup'
import CustomerContainer from './containers/CustomerContainer';
import FarmerContainer from './containers/FarmerContainer';


class App extends Component {
  
  state = {
    email: '',
    current_user: '', 
    user_type: '', 
    filterCategory: '',
    allProducts: [],
    farmerProducts: [],
    customerBasket: [], 
    productCategories: [],
    farm: '', 
    basket_id: null
  }

  signin = (email, current_user, token) => {
    localStorage.setItem('token', token)
    this.setState({email, current_user}, async () => {
      await this.defUserType()
   
      if (this.state.user_type === 'customer') {
        this.getCustomerData()
        this.getAllProducts()
        this.getProductCategories()
        this.props.history.push('/products')
      } else if (this.state.user_type === 'farmer') {
        this.getFarmerData()
        this.props.history.push('/farmers')

      } else {
        this.props.history.push('/')
      }        
      })  
  }
  
  signup = (email, user_type) => {
      this.setState({email, user_type})
    }

  signout = () => {
      this.setState({email: '', current_user: ''})
      this.setState({customerBasket: []})
      localStorage.removeItem('token')
      this.props.history.push('/')
  }
   // def user type 
  defUserType = () => {
    if (this.state.current_user.farmer_id){
      return this.setState({user_type: 'farmer'})
    } else if (this.state.current_user.customer_id){
      return this.setState({user_type: 'customer'})
    } else {
      return this.setState({user_type: ''})
    }
  }

  getAllProducts = async () => {
    API.getProducts()
        .then(allProducts => this.setState({allProducts}))
  }

  getProductCategories = async () => {
    API.getCategories()
      .then(productCategories => this.setState({productCategories}))
  }

  // farmer functionalities
  getFarmerData = async () => {
    const id = this.state.current_user.farmer_id
    return fetch(`http://localhost:3001/farmers/${id}`)
        .then(resp => resp.json())
        .then(data => this.setState({farmerProducts: data.products, farm: data.farm}))
  }

  addToFarmerProducts = (newProduct) => {
    this.setState({farmerProducts: [...this.state.farmerProducts, newProduct]})
  }

  removeProduct = (id) => {
    alert('Are you sure you want to remove the product from sale?')
    API.removeProductFromSale(id)
      .then(this.removeFromSale(id))
  }
  
  removeFromSale = (id) => {
    this.setState({farmerProducts: [...this.state.farmerProducts.filter(p => p.id !== id)]})
  }

  // customer functionalities
  getCustomerData = async () => {
    // get customer basket 
    const id = this.state.current_user.customer_id
    const customer = {
      customer_id: id
    }
    // basket = data.basket.products
    // add headers: {Authorization: localStorage.getItem('token')}
    return fetch(`http://localhost:3001/customers/${id}`)
      .then(resp => resp.json())
      .then(data => {
        if (data.basket){
          this.setState({customerBasket:  data.basket.products, basket_id: data.basket.id})
        } else {
          API.createCustomerBasket(customer)
            .then(basket => this.setState({basket_id: basket.id}))
        }
      })
  }

  addToBasket = (product) => {
    this.setState({customerBasket: [...this.state.customerBasket, product]})
  }
  
  deleteProduct = (id, basket_id) => {
    API.removeProductFromBasket(id, basket_id)
      .then(this.removeFromBasket(id))
  }

  removeFromBasket = (id) => {
    this.setState({customerBasket: [...this.state.customerBasket.filter(p => p.id !== id)]})
  }

  handleFilterCategory = (category) => {
    this.setState({filterCategory: category})
  }

  handleAllCategories = () => {
    this.setState({filterCategory: ''})
  }

  filterProducts = (category) => {
    const products = this.state.allProducts
    const filteredProducts = products.filter(product => product.category.name === category)
    return filteredProducts
  }

  componentDidMount() {
        API.validate()
          .then(data => {
              if(data.error){
                this.getAllProducts()
                this.getProductCategories()
                this.props.history.push('/')
              }
              else {
                  this.signin(data.email, data.user, localStorage.getItem('token')) 
                  if (this.state.user_type === 'farmer'){
                    this.getFarmerData()
                  } else if (this.state.user_type === 'customer') {
                    this.getCustomerData()
                    this.getAllProducts()
                    this.getProductCategories()
                  }
              }
          })
  }

  render() { 
    const {signin, signup, signout, addToFarmerProducts, removeProduct, addToBasket, deleteProduct, filterProducts, handleFilterCategory, handleAllCategories } = this
    const {current_user, user_type, farmerProducts, customerBasket, allProducts, basket_id, productCategories, filterCategory} = this.state
    return ( 
      <div className="app-container">
        <Header 
          current_user={current_user} 
          user_type={user_type} 
          signout={signout}
          customerBasket={customerBasket}
          basket_id={basket_id}
          deleteProduct={deleteProduct} 
          farmerProducts={farmerProducts}
          addToFarmerProducts={addToFarmerProducts} 
        />
        <Switch>
          <Route exact path='/' component={HomePage} />
          <Route exact path='/signin' component={props => <Signin {...props} signin={signin}/>} />
          <Route exact path='/signup' component={props => <Signup {...props} signup={signup}/>} />
          <Route 
            exact path='/peep-profile' 
            component={props => <CustomerProfile {...props} 
            current_user={current_user}
            customerBasket={customerBasket}
            basket_id={basket_id}
            deleteProduct={deleteProduct}/>}
          />
           <Route 
            exact path='/farmer-profile' 
            component={props => <FarmerProfile {...props} 
            current_user={current_user}
            farmerProducts={farmerProducts} />}
          />

          <Route 
            exact path='/products' 
            component={props => <CustomerContainer {...props} 
            current_user={current_user}
            basket_id={basket_id}
            customerBasket={customerBasket}
            addToBasket={addToBasket} 
            deleteProduct={deleteProduct}
            allProducts={allProducts} 
            productCategories={productCategories}
            handleFilterCategory={handleFilterCategory}
            handleAllCategories={handleAllCategories}
            filterProducts={filterProducts}
            filterCategory={filterCategory}
            signout={signout}/>}
          />
          <Route 
            exact path='/farmers' 
            component={props => <FarmerContainer {...props} 
            current_user={current_user} 
            farmerProducts={farmerProducts} 
            addToFarmerProducts={addToFarmerProducts} 
            removeProduct={removeProduct}
            signout={signout}/>}
          />
          <Route component={() => <h1>Page not found.</h1>} />
        </Switch>     
    </div>
     );
  }
}


export default withRouter(App)
