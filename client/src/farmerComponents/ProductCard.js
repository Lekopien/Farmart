import React, { Component } from 'react';

class ProductCard extends Component {

    render() {
        const {url_img, name, price, quantity} = this.props.product        
        return (

            <div id='productCard' className="card">
            <div className="card view view-cascade overlay">
            <img className="card-img-top" src={url_img} alt={name}/>

            </div>

            <div className="card-body ">
                    {/* <p className="grey-text"> {category.name}</p> */}
                    <h5  className="font-weight-bold">{name}</h5>
                    <p className="card-text">£{price} - <span>{quantity}</span></p>
                    <p className="card-text">Chalk Farm</p>
                </div>

            <div className="card-footer text-muted text-center"><button onClick={() => this.props.removeProduct(this.props.product.id)} className="btn btn-orange" >Remove from sale</button>
            </div>
        </div>
        )
    }
}
 
export default ProductCard;