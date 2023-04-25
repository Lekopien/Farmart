import React, { Component } from 'react';
import {Link} from 'react-router-dom'

import API from '../data/API'



const USER_REGEX = /^[A-z][A-z0-9-_]{3,23}$/;
const PASSWORD_REGEX = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%]).{8,24}$/;
const EMAIL_REGEX = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;


class Signup extends Component {
    state = {
        email: '',
        first_name: '',
        last_name: '',
        address: '',
        phone: '',
        password: '', 
        user_type: ''
    }

    handleSubmit = (e) => {
        // API.signin(this.state)
        e.preventDefault()
        API.signup(this.state)
            .then(data => {
                if (data.error){
                    alert('not working!')
                }
                else {
                    // user is authentificated
                    this.props.signup(this.state.email, this.state.user_type) 
                    this.props.history.push('/signin')
                }
            })
    }

    handleChange = e => {
        e.preventDefault()
        this.setState({ [e.target.name]: e.target.value})
    }

    handleUserType = e => {
        e.preventDefault()
        this.setState({user_type: e.target.value}) 
    }

    render() {
        return (  
            // <!-- Default form login -->
            <div id='signup-form-container'>
              <div className='signup-image'></div>
              <div className='form-container-signup'>
              <form id='signup-form' className="text-center ">

<h2>NEW USER</h2>
  <br></br>
  <fieldset>
      <div>
          <select className="form-control mb-4" id='select-user-type' onChange={this.handleUserType} value={this.state.value} >
              <option value=''> -- Select an option -- </option>
              <option value="farmer">I am a farmer</option>
              <option value="customer">I am a Client</option>
          </select>
      </div>
  </fieldset>

  <br></br>

  <fieldset>
      {/* <legend>Step 2: Enter your details</legend> */}

      <input 
          name='first_name' 
          id="defaultSignup" 
          onChange={this.handleChange} 
          value={this.state.first_name} 
          className="form-control mb-4" 
          placeholder="first name" 
      />

      <input 
          name='last_name' 
          id="defaultSignup" 
          onChange={this.handleChange} 
          value={this.state.last_name} 
          className="form-control mb-4" 
          placeholder="last name" 
      />
      <input 
          name='address' 
          id="defaultSignup" 
          onChange={this.handleChange} 
          value={this.state.address} 
          className="form-control mb-4" 
          placeholder="address" 
      />
      <input 
          name='email' 
          id="defaultSignup" 
          onChange={this.handleChange} 
          value={this.state.email} 
          className="form-control mb-4" 
          placeholder="email" 
      />
      <input 
          name='phone' 
          id="defaultSignup" 
          onChange={this.handleChange} 
          value={this.state.phone} 
          className="form-control mb-4" 
          placeholder="phone" 
      />
      <input 
          name='password' 
          type='password'
          id="defaultSignupPassword" 
          onChange={this.handleChange} 
          value={this.state.password} 
          className="form-control mb-4" 
          placeholder="Password" 
      />
  </fieldset>

  <Link to='/signin'><button className="create-btn" onClick={(e) => this.handleSubmit(e)}  type="submit">Sign me up!</button></Link>

              </form>
              </div>
                 
            </div>
          
        );
    }
    
} 
      

export default Signup;