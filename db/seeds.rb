Category.create(name: 'Fruit')
Category.create(name: 'Vegetable')
Category.create(name: 'Land')
Category.create(name: 'Animals')


User.create(
    email: 'customer1@example.com',
    password: 'password',
    first_name: 'John',
    last_name: 'Doe',
    address: '123 Main St',
    phone: '555-1234'
)

Customer.create(user_id: 1)


User.create(
    email: 'farmer1@example.com',
    password: 'password',
    first_name: 'Jane',
    last_name: 'Smith',
    address: '456 Oak St',
    phone: '555-5678'
)

Farmer.create(user_id: 2, farm: 'Smith Farms')

Product.create(
    name: 'Apples',
    price: 0.99,
    quantity: '1 lb',
    url_img: 'https://example.com/apples.jpg',
    farmer_id: 1,
    category_id: 1
)

Product.create(
    name: 'Tomatoes',
    price: 1.99,
    quantity: '1 lb',
    url_img: 'https://example.com/tomatoes.jpg',
    farmer_id: 1,
    category_id: 2
)

Product.create(
    name: 'Corn',
    price: 0.50,
    quantity: '1 ear',
    url_img: 'https://example.com/corn.jpg',
    farmer_id: 2,
    category_id: 3
)

Product.create(
    name: 'Eggs',
    price: 3.99,
    quantity: '1 dozen',
    url_img: 'https://example.com/eggs.jpg',
    farmer_id: 2,
    category_id: 4
)


Basket.create(customer_id: 1)

BasketProduct.create(basket_id: 1, product_id: 1)
BasketProduct.create(basket_id: 1, product_id: 2)

CustomerFarmer.create(customer_id: 1, farmer_id: 1)
