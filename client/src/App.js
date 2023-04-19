import "./App.css";
import Header from "./components/Header";
import Footer from "./components/Footer";
import Home from "./components/Home";
import About from "./components/About";
import React from "react";
import { Routes, Route } from "react-router-dom";
import Products from "./components/Products";
import Lease from "./components/Lease";
import AnimalsForm from "./utilis/AnimalsForm"
import LandForm from "./utilis/LandForm";
import FarmerProd from "./components/FarmerProd";

function App() {
  return (
    <>
      <Header />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/products" element={<Products />} />
        <Route path="/about" element={<About />} />
        <Route path="/lease" element={<Lease />} />
        <Route path="/animalsform" element={<AnimalsForm />} />
        <Route path="/landform" element={<LandForm />} />
        <Route path="/farmerprod" element={<FarmerProd />} />
      </Routes>
      <Footer />
    </>
  );
}

export default App;
