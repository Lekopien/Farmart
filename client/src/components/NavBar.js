import React, { Component } from 'react';

import {Link} from 'react-router-dom'

class NavBar extends Component {

  
    render() { 
        return ( 
          <div id='nav-container'>
            <nav className="navbar navbar-expand-lg navbar-light sticky-top scrolling-navbar">
            <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
                aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
                <span className="navbar-toggler-icon"></span>
            </button>
    
            <div className="collapse navbar-collapse" id="basicExampleNav">height: 100vh;
                <ul className="navbar-nav mr-auto">
                    <li className="nav-item active">
                   <Link to='/'> <p className="navbar-brand">FarmArt</p> </Link>
                    </li>
                </ul>
                <ul className='nav form-inline my-2 my-lg-0 ml-auto '>

                    <h5> 
                    {
                        !this.props.current_user 
                        ? 
                            <Link to='/signup'><button className="btn btn-outline-dark btn-lg my-2 my-sm-0 ml-3">REGISTER</button></Link> 
                        : `Welcome back, ${this.props.current_user.first_name}!`}
                    </h5>
                    
                    { 
                        this.props.current_user 
                        ?  <button onClick={this.props.signout} className="btn btn-outline-green btn-md my-2 my-sm-0 ml-3"          type="submit">Logout</button>
                        :    <Link to='/signin'><li>Login</li></Link>
                         
                    }
            
                </ul>
            </div>
            </nav>
            </div>
         );
    }
}
 
export default NavBar;