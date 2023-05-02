import ProductCard from "./ProductCard";
import { useState } from "react";
import "../App.css";

function ProductCollection(props) {
  const [productsPerPage, setProductsPerPage] = useState(3);
  const [currentPage, setCurrentPage] = useState(1);
  
  const handleLoadMore = () => {
    setCurrentPage(currentPage + 1);
  };

  const handleGoBack = () => {
    setCurrentPage(currentPage - 1);
  };

  const { allProducts, filterCategory, filterProducts } = props;

  const startIndex = (currentPage - 1) * productsPerPage;
  const endIndex = startIndex + productsPerPage;

  const productsToDisplay =
    filterCategory === ""
      ? allProducts.slice(startIndex, endIndex)
      : filterProducts(filterCategory).slice(startIndex, endIndex);

  const canLoadMore =
    endIndex <
    (filterCategory === ""
      ? allProducts.length
      : filterProducts(filterCategory).length);
  const canGoBack = currentPage > 1;

  return (
    <div className="overaldiv">
      <div className="productCollection row align-items-stretch">
        {productsToDisplay.map((product) => (
          <ProductCard
            key={product.id}
            id={product.id}
            product={product}
            addToBasket={props.addToBasket}
            basket_id={props.basket_id}
            customerBasket={props.customerBasket}
            history={props.history}
            current_user={props.current_user}
          />
        ))}
      </div>
      <div style={{}} className="pagination">
        {canGoBack && (
          <button className="pagination-btn" onClick={handleGoBack}>
            Prev
          </button>
        )}
        {canLoadMore && (
          <button className="pagination-btn" onClick={handleLoadMore}>
            Load More
          </button>
        )}
      </div>
    </div>
  );
}

export default ProductCollection;