import React, {Component} from 'react';
import API from '../data/API'

class ProductCard extends Component {

    handleSubmit = (id, product) => {
        const {basket_id, customerBasket, addToBasket, current_user} = this.props
        const itemAlreadyInBasket = customerBasket.some(el => el.id === id);

        let productForApi = {
            product_id: id,
            basket_id
        }

        if (current_user) {
            if (itemAlreadyInBasket){
                alert('You already have this item in your basket!')
        } else {
            API.addToCustomerBasket(productForApi)
            addToBasket(product);   
        }       
        } else {
            alert('You need to register first!')
            this.props.history.push('/signup')
        }    
    }


    render() {
        const {url_img, name, price, quantity, category, id} = this.props.product
        return (
            <div id='productCard' className="card ">
                <div className="card view view-cascade overlay">
                    <img className="card-img-top" src={url_img} alt={name}/>
                </div>
                <div className="card-body ">
                    <p className="grey-text"> <i>{category.name}</i></p>
                    <h5  className="font-weight-bold">{name}</h5>
                    <p className="card-text">£{price} - <span>{quantity}</span></p>
                    <p className="card-text">Chalk Farm</p>
                </div>
                <div className="card-footer text-muted text-center">
                    <button
                    onClick={() => this.handleSubmit(id, this.props.product)}
                    id='add-basket-btn'
                    className="btn btn-outline-orange lighten-1">ADD TO BASKET
                    </button>
                </div>
            </div>
        )
    }
}

export default ProductCard