import React, { Component } from 'react';
import Modal from 'react-modal';

import BasketCard from './BasketCard'
import Checkout from '../components/Checkout'

// Bind modal to your appElement for accessibility
Modal.setAppElement('#root')

const customStyles = {
    content : {
      top                   : '50%',
      left                  : '50%',
      right                 : 'auto',
      bottom                : 'auto',
      marginRight           : '-50%',
      transform             : 'translate(-50%, -50%)'
    }
}


class Basket extends Component {
    state = {
        modalIsOpen: false
    }

    openModal = () => {
        this.setState({modalIsOpen: true});
    }
     
    closeModal = () => {
        this.setState({modalIsOpen: false});
    }

  
    render() { 
        const {customerBasket} = this.props
        const subtotal = customerBasket.map(el => el.price).reduce((a, b) => a + b, 0)
        const deliveryFee = 1.70
        const totalPrice = (subtotal + deliveryFee).toFixed(2)
        const product = customerBasket.map(product => (

                <BasketCard 
                    key={product.id}
                    product={product}
                    deleteProduct={this.props.deleteProduct}
                    basket_id={this.props.basket_id}
                />
               
            
        ))
        return (
            <div id ='panel-content'>
                {product} 
                <hr/>
                <div id='summary-content'>
                    <p><i>Subtotal: £{subtotal}</i></p>
                    <p><i>Delivery Fee: £{deliveryFee}</i></p>
                    <p><b>Total: £{totalPrice}</b></p>
                </div>
                <hr/>
                <div id='checkout-btn'>
                    <button onClick={this.openModal} className='btn btn-md'>Checkout</button>
                    <Modal
                        isOpen={this.state.modalIsOpen}
                        onRequestClose={this.closeModal}
                        onClick={this.closeModal}
                        style={customStyles}
                        contentLabel="Example Modal"
                        >
                        <form>
                           <Checkout />
                        </form>
                    </Modal>
                </div>
            </div>

        )
    }
}
 
export default Basket;