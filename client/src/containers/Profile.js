import React, { Component } from 'react';

import CustomerProfile from './CustomerProfile'
import FarmerProfile from './FarmerProfile'

class Profile extends Component {

    render() { 

        return ( 
            <div>
                {
                    this.props.user_type === 'customer'
                        ? <CustomerProfile current_user={this.props.current_user} customerBasket={this.props.customerBasket} />
                        : <FarmerProfile current_user={this.props.current_user} farmerProducts={this.props.farmerProducts}/>
                }
            </div>
         );
    }
}
 
export default Profile;