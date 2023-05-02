import React, { useState } from 'react';
import API from '../data/API'

const ProductForm = ({ current_user, addToFarmerProducts }) => {
    const [name, setName] = useState('');
    const [price, setPrice] = useState('');
    const [quantity, setQuantity] = useState('');
    const [url_img, setUrlImg] = useState('');
    const [category, setCategory] = useState('');
    const [farm, setFarm] = useState('');

    const handleCategory = (e) => {
        setCategory(e.target.value);
    };

    const handleChange = (e) => {
        const { name, value } = e.target;
        if (name === 'name') setName(value);
        if (name === 'price') setPrice(value);
        if (name === 'quantity') setQuantity(value);
        if (name === 'url_img') setUrlImg(value);
        if (name === 'farm') setFarm(value);
    };

    const handleSubmit = () => {
        const id = current_user.farmer_id;

        const product = {
            name,
            price,
            quantity,
            url_img,
            farmer_id: id,
            category,
        };

        API.createProduct(product)
            .then((product) => addToFarmerProducts(product));
    };

        return (
            <div id='product-form-container'>
                    <h2>Enter a new product below</h2>
                    <br></br>
                    <br></br>
                    <div id='product-form-and-preview'>
                    <form id='product-form' className="text-center">
                    <input
                        name='name'
                        onChange={this.handleChange}
                        value={name}
                        className="form-control mb-4"
                        placeholder="What product would you like to add?"
                    />

                    <input
                        name='price'
                        onChange={this.handleChange}
                        value={price}
                        className="form-control mb-4"
                        placeholder="Ksh"
                    />
                    <input
                        name='quantity'
                        onChange={handleChange}
                        value={quantity}
                        className="form-control mb-4"
                        placeholder="500g? 4 pieces? 1 bunch?"
                    />
                    <input
                        type='file'
                        name='url_img'
                        onChange={this.handleChange}
                        value={url_img}
                        className="form-control mb-4"
                        placeholder="Paste your image url here"
                    />

                    <input
                        name='farm'
                        onChange={handleChange}
                        value={farm}
                        className="form-control mb-4"
                        placeholder="farm"
                    />

                    <div>
                        <select className="form-control mb-4" id='select-product-category' onChange={handleCategory} value={category} >
                            <option value=''> -- Select a category -- </option>
                            <option value="Farm Products">Farm Products</option>
                            <option value="Animal Products">Animal Products</option>
                            <option value="Lands for Lease">Lands for Lease</option>

                        </select>
                    </div>
                    <br></br>

                    <button className="btn btn-outline-orange btn-lg" onClick={handleSubmit} type="button">Add my product!</button>
                </form>
                <div id='preview-container'>
                    <div id='productCard' className="card">
                        <br></br>
                        <div className="card view view-cascade overlay">
                            <img className="card-img-top" src={url_img} alt={name} />
                        </div>

                        <div className="card-body ">
                            <h5 className="grey-text pb-2 pt-1"> {category}</h5>
                            <h4  className="font-weight-bold card-title">{name}</h4>
                            <p className="card-text">Ksh{price}</p>
                            <p className="card-text">{quantity}</p>
                            <p className="card-text">{farm}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    );
}



export default ProductForm;