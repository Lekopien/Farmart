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


20.times do
  Animal.create(
    farmer_id: Faker::Number.between(from: 1, to: 10),
    animal_type: Faker::Creature::Animal.name,
    breed: Faker::Creature::Dog.breed,
    age: rand(1..10),
    price: rand(50..1000),
    in_stock: [true, false].sample
  )
end

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
