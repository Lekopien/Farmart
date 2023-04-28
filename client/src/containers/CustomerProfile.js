import React, { Component } from 'react';

import AccountDetails from '../components/AccountDetails'
import BasketDetails from '../components/BasketDetails'
import ComingSoon from './ComingSoon';


class CustomerProfile extends Component {
    render() { 
        const rendering =  <AccountDetails current_user={this.props.current_user}/>   
       
        return ( 
            <main className="mt-5" id='profile-container'>
                <div id='profile-components' className="content">
                    {rendering}
                </div>
            </main>
         );
    }
}
 
export default CustomerProfile;