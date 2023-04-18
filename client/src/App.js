import "./App.css";
import Header from "./components/Header";
import Footer from "./components/Footer";
import Home from "./components/Home";
import About from "./components/About";
import React from "react";
import { Routes, Route } from "react-router-dom";
import Products from "./components/Products";
import Lease from "./components/Lease";

function App() {
  return (
    <>
      <Header />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/products" element={<Products />} />
        <Route path="/about" element={<About />} />
        <Route path="/lease" element={<Lease />} />
      </Routes>
      <Footer />
    </>
  );
}

export default App;
