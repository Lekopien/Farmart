# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'start'

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


puts 'end'
