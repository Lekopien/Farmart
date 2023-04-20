import React, { useState } from "react";

export default function LandForm() {
  const [formData, setFormData] = useState({
    price: "",
    location: "",
    availability: "",
    image: "",
    price: "",
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prevFormData) => ({ ...prevFormData, [name]: value }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();

    const response = await fetch("/lands", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(formData),
    });

    if (response.ok) {
      setFormData({
        price: "",
        location: "",
        availability: "",
        image: "",
        price: "",
      });
      alert("Data created successfully");
    } else {
      alert("Error creating data");
    }
  };
  return (
    <>
      <section class="bg-primary ">
        <div class="py-8 lg:py-16 px-4 mx-auto max-w-screen-md">
          <h2 class="text-4xl font-bold mb-5 pb-2 mb-4 text-4xl tracking-tight font-extrabold text-center text-white">
            Land Lease
          </h2>

          <form
            action="#"
            method="POST"
            class="space-y-8"
            onClick={handleSubmit}
          >
            <div>
              <label
                for="price"
                class="block mb-2 text-sm font-medium  text-gray-300"
              >
                Price
              </label>
              <input
                type="price"
                id="price"
                onChange={handleChange}
                value={formData.price}
                name="price"
                class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500 dark:shadow-sm-light"
                placeholder="Price"
                required
              />
            </div>
            <div>
              <label
                for="location"
                class="block mb-2 text-sm font-medium text-gray-300"
              >
                Location
              </label>
              <input
                type="location"
                name="location"
                value={formData.location}
                onChange={handleChange}
                id="location"
                class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500 dark:shadow-sm-light"
                placeholder="Location"
                required
              />
            </div>
            <div>
              <label
                for="availability"
                class="block mb-2 text-sm font-medium text-gray-300"
              >
                Availability
              </label>
              <input
                type="availability"
                value={formData.availability}
                onChange={handleChange}
                id="availability"
                name="availability"
                class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500 dark:shadow-sm-light"
                placeholder="Availability"
                required
              />
            </div>{" "}
            <div>
              <label
                for="image"
                class="block mb-2 text-sm font-medium text-gray-300"
              >
                image
              </label>
              <input
                id="image"
                name="image"
                value={formData.image}
                onChange={handleChange}
                class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500 dark:shadow-sm-light"
                placeholder="image"
                required
              />
            </div>
            <div class="sm:col-span-2"></div>
            <button
              type="submit"
              className="text-white bg-gradient-to-b from-cyan-500 to-blue-500 px-6 py-3 my-8 mx-auto flex items-center rounded-md hover:scale-110 duration-300"
              onClick={handleSubmit}
            >
              Submit
            </button>
          </form>
        </div>
      </section>
    </>
  );
}