import React, {Fragment} from 'react';


function BasketCard() {

        const {name, price, id} = this.props.product
        const basket_id = this.props.basket_id

        return (

            <Fragment >
                <p id='basket-products'className="font-weight-bold">{name} - <span>£{price}</span><button className= ' delete-from-checkout btn btn-sm' onClick={() => this.props.deleteProduct(id, basket_id)}><i>Delete</i></button></p>
                {/* <div id='delete-from-checkout'></div> */}
            </Fragment>
        )
    }

export default BasketCard