import React, { Component } from 'react';
import AccountDetails from '../components/AccountDetails'


class FarmerProfile extends Component {
 
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
 
export default FarmerProfile;