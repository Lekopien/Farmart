import React, { Component } from 'react';

import BasketCard from '../customerComponents/BasketCard'

class BasketDetails extends Component {
    state = {  }
    render() { 
        const product = this.props.customerBasket.map(product => (
            <BasketCard 
                key={product.id}
                product={product}
                deleteProduct={this.props.deleteProduct}
                current_basket={this.props.current_basket}
            />
        ))

        return ( 
            <div id='basketContainer'>
            <h2>Your Basket</h2>
            <div className="productCollection">
                <div > {product} </div>
            </div>
            </div>
           
            
         );
    }
}
 
export default BasketDetails;