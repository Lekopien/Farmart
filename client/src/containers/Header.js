import React, { Component } from 'react';

import {Link} from 'react-router-dom'
import Modal from 'react-modal'
import SlidingPane from 'react-sliding-pane'
import 'react-sliding-pane/dist/react-sliding-pane.css'

import Basket from '../customerComponents/Basket'


class Header extends Component {

    state = {
        isPaneOpen: false
    }

    componentDidMount() {
        Modal.setAppElement(this.el);
    }
    
    render() { 
        const itemNumber = this.props.customerBasket.length
        const noUserLoggedIn = !this.props.current_user
        const isCustomer = this.props.current_user && this.props.user_type === 'customer'
        
        return ( 
            <nav className="naigation_bar sticky-top">
         
            <Link to='/' className="navbar-logo">FarmArt</Link>
            {   
                this.props.current_user  && <p id='welcome-user'>Welcome, {this.props.current_user.first_name}! </p>  
            }
            <div id='nav-content'>        
                     
                    { noUserLoggedIn 
                        ? 
                                <ul id='navbar-general'>
                                    <Link to='/' id="about">About</Link>
                                    <Link to='/products' id='shop'> Shop</Link>
                                    <Link to='/signup' id='register'>Create Account</Link>
                                    <Link to='/signin' id='login'> Login</Link>
                                </ul>
                         
                        : (
                            isCustomer 
                            ?   
                            
                            <ul id='navbar-customer'>
                                  <div className='panel-icon' ref={ref => this.el = ref}>
                                        <i className='fas fa-shopping-basket' onClick={() => this.setState({ isPaneOpen: true })}></i>{itemNumber}
                                        <SlidingPane
                                            className='some-custom-class'
                                            overlayClassName='some-custom-overlay-class'
                                            isOpen={ this.state.isPaneOpen }
                                            width='400px'
                                            onRequestClose={ () => {
                                                // triggered on "<" on left top click or on outside click
                                                this.setState({ isPaneOpen: false });
                                            } }>
                                            <div id='panel-title'>
                                                <h5>My basket</h5>
                                            </div>
                                            <div id='panel-content-basket'>
                                                <br />
                                                { !this.props.customerBasket 
                                                    ? `Your basket is currently empty`
                                                    :   <Basket 
                                                            current_user={this.props.current_user}
                                                            basket_id={this.props.basket_id}
                                                            customerBasket={this.props.customerBasket}
                                                            deleteProduct={this.props.deleteProduct}
                                                        />
                                                }
                                                < br />
                                            </div>       
                                        </SlidingPane>
                                    </div>
                                    <Link to='/products' id="shop-2">Shop</Link>
                                    <Link to='/peep-profile' id="profile">Profile</Link> 
                                    <Link to='/resources' id='resources'>Resources</Link>
                                    <a id='logout' onClick={this.props.signout}>Logout</a>
                                 
                            </ul>

                            :  <ul id='navbar-farmer'>
                                    <Link to='/farmers' id="sales">Sales</Link> 
                                    <Link to='/farmer-profile' id='farmer-profile'>Profile</Link> 
                                    <Link to='/resources' id='resources'>Resources</Link>
                                    <a id='logout' onClick={this.props.signout}>Logout</a>
     
                                </ul>
                        )
     
                    }

            </div>
            </nav>
         );
    }
}

 
export default Header;