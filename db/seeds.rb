<<<<<<< HEAD
require 'faker'

10.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    # password: Faker::Internet.password,
    address: Faker::Address.full_address
  )
end

10.times do
    farmer_name = Faker::Name.name
    farmer_location = Faker::Address.city
    contact_info = Faker::Number.between(from: 1111111111, to: 2222222222)

    Farmer.create!(
      farmer_name: farmer_name,
      farmer_location: farmer_location,
      contact_info: contact_info
    )
  end
=======
Category.create(name: 'Fruit')
Category.create(name: 'Vegetable')
Category.create(name: 'Land')
Category.create(name: 'Animals')
>>>>>>> 8b29682a4c72af4ef6ffbcdd43865dca3584621a


User.create(
    email: 'customer1@example.com',
    password: 'password',
    first_name: 'John',
    last_name: 'Doe',
    address: '123 Main St',
    phone: '555-1234'
)

Customer.create(user_id: 1)

# # Generate fake data for animals
# 10.times do
#   Animal.create(
#     farmer_id: Farmer.pluck(:id).sample,
#     image: Faker::LoremFlickr.image(size: "300x300", search_terms: ['animal']),
#     animal_type: Faker::Creature::Animal.name,
#     breed: Faker::Creature::Dog.breed,
#     age: Faker::Number.between(from: 1, to: 10),
#     price: Faker::Commerce.price(range: 50..500.0),
#     in_stock: Faker::Boolean.boolean
#   )
# end

<<<<<<< HEAD
# # Generate fake data for lands
# 10.times do
#   Land.create(
#     farmer_id: Farmer.pluck(:id).sample,
#     image: Faker::LoremFlickr.image(size: "300x300", search_terms: ['landscape']),
#     price: Faker::Commerce.price(range: 500..5000.0),
#     location: Faker::Address.city,
#     availability: Faker::Boolean.boolean
#   )
# end

# # Generate fake data for orders
# 10.times do
#   Order.create(
#     user_id: User.pluck(:id).sample,
#     animal_id: Animal.pluck(:id).sample,
#     total_price: Faker::Commerce.price(range: 50..500.0),
#     order_status: Faker::Boolean.boolean,
#     delivery_address: Faker::Address.full_address
#   )
# end

# # Generate fake data for leases
# 10.times do
#   Lease.create(
#     user_id: User.pluck(:id).sample,
#     land_id: Land.pluck(:id).sample,
#     lease_status: Faker::Boolean.boolean
#   )
# end
=======
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
>>>>>>> 8b29682a4c72af4ef6ffbcdd43865dca3584621a
