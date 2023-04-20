import React from "react";
import HeroImg from "../assets/farmat.png";

function Home() {
  return (
    <section className="bg-primary px-5 text-white py-32">
      <div className="container mx-auto grid md:grid-cols-2 items-center justify-center md:justify-between">
        <div className="hero-info pb-5 md:pb-0">
          <h1 className="text-4xl lg:text-6xl">FARMAT LANDING</h1>

          <p className="py-5 mb-8">
            Farmart is an online marketplace that links farmers with customers,
            allowing farmers to sell their farm products directly to consumers
            without intermediaries, resulting in a more equitable and
            transparent supply chain. Farmart's platform offers a variety of
            farm products, ranging from fruits and vegetables to dairy and meat
            products, which customers can easily browse and purchase.
          </p>

          <a
            href="/about"
            className=" btn bg-accent  border-2 border-[#7477FF] text-white px-6 py-3 hover:bg-transparent"
          >
            Learn More
          </a>
        </div>

        <div className="hero-img">
          <img
            src={HeroImg}
            alt="coding illustration"
            className="lgw-[80%] ml-auto rounded-full w-90 h-80"
          />
        </div>
      </div>
    </section>















);
}

export default Home;
