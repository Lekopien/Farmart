import React, { Component } from 'react';
import API from '../data/API'

class Signin extends Component {
    state = {
        email: '',
        password: '', 
        current_user: ''  
    }
    
    handleSubmit = (e) => {
        e.preventDefault()
        API.signin(this.state)
            .then(data => {
                if (data.error){
                    alert("Email adress not found")
                }
                else {
                    // user is authentificated! 
                    this.setState({current_user: data.user})
                    this.props.signin(this.state.email, this.state.current_user, data.token)

                }
            })
    }

    handleChange = e => {
        e.preventDefault()
        this.setState({ [e.target.name]: e.target.value})
    }

    render() { 
        return ( 
// <!-- Default form login -->
            <div id='signin-form-container'>
                <form id='signin-form' className="text-center">
                <h2><b>RETURNING USER</b></h2>
                    <h2 className="h4 mb-4">Sign in</h2>
                    <br></br>

                    <input 
                        name='email' 
                        id="defaultLoginFormEmail" 
                        onChange={this.handleChange} 
                        value={this.state.email} 
                        className="form-control mb-2 " 
                        placeholder="email" 
                    />
                    <input 
                        name='password' 
                        type='password'
                        id="defaultLoginFormPassword" 
                        onChange={this.handleChange} 
                        value={this.state.password} 
                        className="form-control mb-4" 
                        placeholder="Password" 
                    />
                 
                    <button className="btn btn-outline-orange btn-lg " onClick={(e) => this.handleSubmit(e)}> Sign me in! </button>
                </form>
              
            </div>
            );
    }
}
 
export default Signin;