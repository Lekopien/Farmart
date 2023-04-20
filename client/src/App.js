import "./App.css";
import Header from "./components/Header";
import Footer from "./components/Footer";
import Home from "./components/Home";
import About from "./components/About";
import Login from "./components/Login";
import SignUp from "./components/SignUp";
import React from "react";
import { Routes, Route } from "react-router-dom";
import Products from "./components/Products";
import Lease from "./components/Lease";
import Layout from "./components/Layout";
import RequireAuth from "./components/RequireAuth";
import PersistLogin from "./components/PersistLogin";


function App() {
  return (
    <>
      <Header />
      <Routes path='/' element={<Layout/>}>
        <Route path="/" element={<Home/>} />
        <Route path="/produts" element={<Products />} />
        <Route path="/about" element={<About />} />
        <Route path="/signup" element={<SignUp/>}/>
        <Route path="/login" element={<Login/>}/>
       
        <Route element={<RequireAuth />}>
        <Route path="/lease" element={<Lease />} />
        </Route>
      
        
      </Routes>
      <Footer />
    </>
  );
}

export default App;
