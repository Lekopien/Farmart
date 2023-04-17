import React from "react";
import AboutImg from "../assets/farm.png";

const About = () => {
  return (
    <>
      <section className="bg-secondery text-white px-5 py-32" id="about">
        <div className="container mx-auto grid md:grid-cols-2 items-center justify-center md:justify-between">
          <div className="about-info">
            <h2 className="text-4xl font-bold mb-5 border-b-[5px] w-[180px] border-indigo-600 pb-2">
              About My System
            </h2>

            <p className="pb-5">
              Farmart is a web-based application designed to connect farmers and
              consumers in an online marketplace. It offers a platform for
              farmers to sell their fresh produce and other farm products
              directly to customers, bypassing the need for middlemen and
              creating a fairer and more transparent supply chain. The
              application enables customers to browse a wide range of farm
              products, from fresh vegetables and fruits to dairy products and
              meats, and purchase them with ease.
            </p>
            <p className="pb-5">
              The user-friendly interface makes it easy for both farmers and
              consumers to navigate, and the secure payment system ensures that
              all transactions are safe and reliable. With Farmart, farmers can
              reach a wider audience and increase their income, while consumers
              can enjoy fresh, healthy, and locally sourced products delivered
              right to their doorstep.
            </p>
          </div>

          <div className="about-img">
            <img
              src={AboutImg}
              alt="coding illustration"
              className="lgw-[80%] md:ml-auto"
            />
          </div>
        </div>
      </section>
    </>
  );
};

export default About;
