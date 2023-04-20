import React, { useState } from "react";

export default function Animals() {
  const [formData, setFormData] = useState({
    farmer_id: "",
    animal_type: "",
    breed: "",
    age: "",
    price: "",
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prevFormData) => ({ ...prevFormData, [name]: value }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();

    const response = await fetch("/animals", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(formData),
    });

    if (response.ok) {
      setFormData({
        farmer_id: "",
        animal_type: "",
        breed: "",
        age: "",
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
            Add my animals
          </h2>

          <form
            action="#"
            method="POST"
            class="space-y-8"
            onClick={handleSubmit}
          >
            <div>
              <label
                for="farmer_id"
                class="block mb-2 text-sm font-medium text-gray-300"
              >
                Farmer ID
              </label>
              <input
                type="text"
                id="id"
                name="farmer_id"
                onChange={handleChange}
                value={formData.farmer_id}
                class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500 dark:shadow-sm-light"
                placeholder="Farmer Id"
                required
              />
            </div>{" "}
            <div>
              <label
                for="animal_type"
                class="block mb-2 text-sm font-medium text-gray-300"
              >
                Animal type
              </label>
              <input
                type="text"
                onChange={handleChange}
                name="animal_type"
                value={formData.animal_type}
                id="name"
                class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500 dark:shadow-sm-light"
                placeholder="Animal type"
                required
              />
            </div>
            <div>
              <label
                for="breed"
                class="block mb-2 text-sm font-medium text-gray-300"
              >
                Breed
              </label>
              <input
                type="text"
                onChange={handleChange}
                name="breed"
                value={formData.breed}
                id="breed"
                class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500 dark:shadow-sm-light"
                placeholder="Breed"
                required
              />
            </div>{" "}
            <div>
              <label
                for="age"
                class="block mb-2 text-sm font-medium text-gray-300"
              >
                Age
              </label>
              <input
                type="text"
                onChange={handleChange}
                name="age"
                value={formData.age}
                id="age"
                class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500 dark:shadow-sm-light"
                placeholder="Age"
                required
              />
            </div>{" "}
            <div>
              <label
                for="price"
                class="block mb-2 text-sm font-medium  text-gray-300"
              >
                Price
              </label>
              <input
                type="text"
                onChange={handleChange}
                name="price"
                value={formData.price}
                id="price"
                class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500 dark:shadow-sm-light"
                placeholder="Price"
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