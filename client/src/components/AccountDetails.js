import React, { Component } from 'react';

class AccountDetails extends Component {
    state = { 
        
    }
    render() { 
        return (
            
            <div id='personal-info'>
                <h2 className="d-flex align-items-center account-details">Account Details</h2>
                <form className='form'>
                    <div className='col-xs-12 col-sm-6 col-md-6'>
                        <h3><b>Personal Info</b></h3>
                        <div className='form-group'>
                            <label>First Name</label>
                            <input type='text' className='form-control' name='first_name' value={this.props.current_user.first_name}></input>
                        </div>
                        <div className='form-group'>
                            <label>Last Name</label>
                            <input type='text' className='form-control' name='last_name' value={this.props.current_user.last_name}></input>
                        </div>
                        <div className='form-group'>
                            <label>Email</label>
                            <input type='text' className='form-control' name='email' value={this.props.current_user.email}></input>
                        </div>
                        <div className='form-group'>
                            <label>Phone</label>
                            <input type='text' className='form-control' name='phone' value={this.props.current_user.phone}></input>
                        </div>                      
                    </div>
                    <div className='col-xs-12 col-sm-6 col-md-6'>
                        <h3><b>Delivery Adress</b></h3>
                        <div className='form-group'>
                            <label>Address</label>
                            <input type='text' className='form-control' name='first_name' value={this.props.current_user.address}></input>
                        </div>
                        <div className='form-group'>
                            <label>City</label>
                            <input type='text' className='form-control' name='last_name' value='London'></input>
                        </div>
                        <div className='form-group'>
                            <label>ZipCode</label>
                            <input type='text' className='form-control' name='email' value='W1U 4QU'></input>
                        </div>
                                          
                    </div>
                </form>
              
                
            </div> 

         );
    }
}
 
export default AccountDetails;