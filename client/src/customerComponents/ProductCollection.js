import React, { Component } from 'react';
import ProductCard from './ProductCard';
class ProductCollection extends Component {
  constructor(props) {
    super(props);
    this.state = {
      currentPage: 1,
      itemsPerPage: 10,
    };
  }
  handleLoadMoreClick = () => {
    this.setState({ currentPage: this.state.currentPage + 1 });
  };
  handlePreviousClick = () => {
    this.setState({ currentPage: this.state.currentPage - 1 });
  };
  render() {
    const { allProducts, filterCategory, filterProducts } = this.props;
    const { currentPage, itemsPerPage } = this.state;
    const startIndex = (currentPage - 1) * itemsPerPage;
    const endIndex = startIndex + itemsPerPage;
    const currentProducts =
      filterCategory === ''
        ? allProducts.slice(startIndex, endIndex)
        : filterProducts(filterCategory).slice(startIndex, endIndex);
    const product = currentProducts.map((product) => (
      <ProductCard
        key={product.id}
        id={product.id}
        product={product}
        addToBasket={this.props.addToBasket}
        basket_id={this.props.basket_id}
        customerBasket={this.props.customerBasket}
        history={this.props.history}
        current_user={this.props.current_user}
      />
    ));
    const canLoadMore = endIndex < allProducts.length;
    const canGoPrevious = currentPage > 1;
    return (
      <div className="productCollection-wrapper">
        <div className='productCollection'>
          {product}
        </div>
        <div className="productCollection-buttons">
          {canLoadMore && (
            <button style={{backgroundColor: "white", color: "grey"}} onClick={this.handleLoadMoreClick}>Load More</button>
          )}
          {canGoPrevious && (
            <button onClick={this.handlePreviousClick}>Previous</button>
          )}
        </div>
      </div>
    );
  }  
}
export default ProductCollection;