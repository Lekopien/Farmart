import React, { useState } from "react";

function Cart() {
  const [cart, setCart] = useState([]);

  const handleAddToCart = (item) => {
    setCart([...cart, item]);
  };

  const handleRemoveFromCart = (index) => {
    const newCart = [...cart];
    newCart.splice(index, 1);
    setCart(newCart);
  };

  return (
    <div>
      <h2>Cart</h2>
      {cart.length > 0 ? (
        <ul>
          {cart.map((item, index) => (
            <li key={index}>
              {item.name} - {item.price}
              <button onClick={() => handleRemoveFromCart(index)}>
                Remove
              </button>
            </li>
          ))}
        </ul>
      ) : (
        <p>Your cart is empty.</p>
      )}
    </div>
  );
}

export default Cart;














// import React from "react";

// function Cart() {
//   const products = [
//     { id: 1, name: "Product 1", price: 10.0, quantity: 1 },
//     { id: 2, name: "Product 2", price: 15.0, quantity: 2 },
//     { id: 3, name: "Product 3", price: 5.0, quantity: 3 },
//   ];

//   const handleUpdateCart = () => {
//     // Update the cart logic goes here
//   };

//   const handleRemoveItem = (productId) => {
//     // Remove the item from cart logic goes here
//   };

//   const getTotalPrice = () => {
//     return products.reduce((acc, curr) => acc + curr.price * curr.quantity, 0);
//   };

//   return (
//     <div>
//       <h1>Cart</h1>
//       <ul>
//         {products.map((product) => (
//           <li key={product.id}>
//             {product.name} x {product.quantity} - ${product.price.toFixed(2)}
