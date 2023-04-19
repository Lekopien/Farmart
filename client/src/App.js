import "./App.css";
import Header from "./components/Header";
import Footer from "./components/Footer";
import Home from "./components/Home";
import About from "./components/About";
import React from "react";
import { Routes, Route } from "react-router-dom";
import Products from "./components/Products";
import Lease from "./components/Lease";
import Cart from "./components/cart";
// import Checkout from "./components/Checkout";

function App() {
  return (
    <>
      <Header />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/products" element={<Products />} />
        <Route path="/about" element={<About />} />
        <Route path="/lease" element={<Lease />} />
        <Route path="/cart" element={<Cart />} />
        {/* <Route path="/checkout" element={<Checkout />} /> */}
      </Routes>
      <Footer />
    </>
  );
}

export default App;
