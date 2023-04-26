import React, { Component } from 'react';

class CategoriesBar extends Component {
 
    render() { 
        const categories = this.props.productCategories
    
        return ( 
            <nav id='product-category-navbar' className="navbar navbar-dark navbar-dark  deep-orange ">
                <a  
                    href='#allProduces'
                    key='all produces'
                    onClick={this.props.handleAllCategories}
                    id='product-category'>All Produces
                </a>
                { categories.map(category => 
                    <a 
                    href={`#${category}`} 
                    key={category}
                    onClick={() => this.props.handleFilterCategory(category)}
                    id='product-category'>{category}
                    </a>)  
                } 

            </nav>

         );
    }
}
 
export default CategoriesBar;