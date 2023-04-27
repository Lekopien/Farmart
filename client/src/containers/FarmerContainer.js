import React, { Component } from 'react';

import Modal from 'react-modal'
import SlidingPane from 'react-sliding-pane'
import 'react-sliding-pane/dist/react-sliding-pane.css'

import ProductForm from '../farmerComponents/ProductForm'
import ProductCollection from '../farmerComponents/ProductCollection'


class FarmerContainer extends Component {

    state = {
        isPaneOpen: false
    }

    componentDidMount() {
        Modal.setAppElement(this.el);
    }
  
    render() { 
        return ( 
                <div className='panel-icon sale-content' ref={ref => this.el = ref}>
                    <h2>You currently have <b>{this.props.farmerProducts.length}</b> product(s) on sale</h2>
                    <button className='btn btn-lg btn-outline-white' onClick={() => this.setState({ isPaneOpen: true })}>Add a new product</button>
                        <SlidingPane
                            className='product-form-panel'
                            overlayClassName='some-custom-overlay-class'
                            isOpen={ this.state.isPaneOpen }
                            from='bottom'
                            width='100%'
                            height='100%'
                            onRequestClose={ () => {
                                this.setState({ isPaneOpen: false });
                            } }>
                            <div id='panel-content'>

                                <br />
                                { 
                                    <ProductForm  
                                        current_user={this.props.current_user} 
                                        farmerProducts={this.props.farmerProducts} 
                                        addToFarmerProducts={this.props.addToFarmerProducts}   
                                    />
                                }
                                < br />
                            </div>       
                        </SlidingPane>
                        <ProductCollection
                            farmerProducts={this.props.farmerProducts}
                            removeProduct={this.props.removeProduct}
                        />
                </div>
         
         );
    }
}
 
export default FarmerContainer;