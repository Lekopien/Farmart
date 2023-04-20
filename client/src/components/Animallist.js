import React, { useState, useEffect } from 'react';
import axios from 'axios';

function AnimalList() {
  const [animals, setAnimals] = useState([]);
  const [filter, setFilter] = useState({ breed: '', minAge: '', maxAge: '' });

  useEffect(() => {
    // Fetch the list of animals from the backend API
    axios.get('/animals')
      .then(response => {
        setAnimals(response.data);
      })
      .catch(error => {
        console.error(error);
      });
  }, []);

  function handleFilterChange(event) {
    // Update the filter state based on the user's input
    setFilter({
      ...filter,
      [event.target.name]: event.target.value
    });
  }

  const filteredAnimals = animals.filter(animal => {
    // Filter the animals based on the user's filter selection
    return (
      animal.breed.includes(filter.breed) &&
      animal.age >= filter.minAge &&
      animal.age <= filter.maxAge
    );
  });

  return (
    <div>
      <h1>Animals for Sale</h1>
      <form>
        <label>
          Breed:
          <input type="text" name="breed" value={filter.breed} onChange={handleFilterChange} />
        </label>
        <label>
          Min Age:
          <input type="number" name="minAge" value={filter.minAge} onChange={handleFilterChange} />
        </label>
        <label>
          Max Age:
          <input type="number" name="maxAge" value={filter.maxAge} onChange={handleFilterChange} />
        </label>
      </form>
      <ul>
        {filteredAnimals.map(animal => (
          <li key={animal.id}>
            {animal.name} ({animal.breed}, {animal.age} years old)
          </li>
        ))}
      </ul>
    </div>
  );
}

export default AnimalList;
