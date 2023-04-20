require 'faker'

# Generate fake data for users
# 10.times do
#   User.create(
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     password: Faker::Internet.password(min_length: 8),
#     address: Faker::Address.full_address
#   )
# end

# # Generate fake data for farmers
# 10.times do
#   Farmer.create(
#     email: Faker::Internet.email,
#     farmer_name: Faker::Name.name,
#     farmer_location: Faker::Address.city,
#     contact_info: Faker::PhoneNumber.phone_number,
#     password: Faker::Internet.password(min_length: 8)
#   )
# end

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
