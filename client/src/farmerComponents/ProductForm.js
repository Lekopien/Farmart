import React, { Component } from 'react';
import API from '../data/API'


class ProductForm extends Component {
    state = {
        name: '',
        price: '',
        quantity: '',
        url_img: '',
        category: '', 
        farm: ''    
    }

    handleCategory= e => {
        e.preventDefault()
        this.setState({category: e.target.value}) 
    }

    handleChange = e => {
        e.preventDefault()
        this.setState({ [e.target.name]: e.target.value})
    }

    handleSubmit = () => {
        const {name, price, quantity, url_img} = this.state
        const id = this.props.current_user.farmer_id

        let product = {
            name: name,
            price: price, 
            quantity: quantity,
            url_img: url_img, 
            farmer_id: id,
            category: this.state.category
          }  

        API.createProduct(product)
            .then(product => this.props.addToFarmerProducts(product))
    }

    render() {
        const {name, price, quantity, url_img, farm, category} = this.state
        return (  
            <div id='product-form-container'>
                    <h2>Enter a new product below</h2>
                    <br></br>
                    <br></br>
                    <div id='product-form-and-preview'>
                    <form id='product-form' className="text-center">
                    <input 
                        name='name' 
                        onChange={this.handleChange} 
                        value={name} 
                        className="form-control mb-4" 
                        placeholder="What product would you like to add?" 
                    />

                    <input 
                        name='price' 
                        onChange={this.handleChange} 
                        value={price} 
                        className="form-control mb-4" 
                        placeholder="£" 
                    />
                    <input 
                        name='quantity' 
                        onChange={this.handleChange} 
                        value={quantity} 
                        className="form-control mb-4" 
                        placeholder="500g? 4 pieces? 1 bunch?" 
                    />
                    <input 
                        name='url_img' 
                        onChange={this.handleChange} 
                        value={url_img} 
                        className="form-control mb-4" 
                        placeholder="Paste your image url here" 
                    />

                    <input 
                        name='farm' 
                        onChange={this.handleChange} 
                        value={farm} 
                        className="form-control mb-4" 
                        placeholder="farm" 
                    />

                    <div>
                        <select className="form-control mb-4" id='select-product-category' onChange={this.handleCategory} value={this.state.value} >
                            <option value=''> -- Select a category -- </option>
                            <option value="Vegetable">Vegetable</option>
                            <option value="Fruit">Fruit</option>
                            <option value="Bakery">Bakery</option>
                            <option value="Meat">Meat</option>
                            <option value="Fish">Fish</option>
                            <option value="Pantry">Pantry</option>
                        </select>
                    </div>
                    <br></br>
                       
                    <button className="btn btn-outline-orange btn-lg" onClick={this.handleSubmit}  type="submit">Add my product!</button>
                </form>
                <div id='preview-container'>
                    <div id='productCard' className="card">
                        <br></br>
                        <div className="card view view-cascade overlay">
                        <img className="card-img-top" src={url_img} alt={name}/>
                        </div>

                        <div className="card-body ">
                            <h5 className="grey-text pb-2 pt-1"> {category}</h5>
                            <h4  className="font-weight-bold card-title">{name}</h4>
                            <p className="card-text">£{price}</p>
                            <p className="card-text">{quantity}</p>
                            <p className="card-text">{farm}</p>
                        </div>
                    </div>
                </div>
            </div>          
        </div>
          
        );
    }
    
    
}
 
export default ProductForm;