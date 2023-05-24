# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "4 Boundary St, London E2 7JE", phone_number: "06 24 56 67 89", category: Restaurant::CATEGORIES[0]}
pizza_east = {name: "Pizza East", address: "589A Shoreditch High St, London E1 6PQ", phone_number: "06 24 96 69 89", category: Restaurant::CATEGORIES[2]}
chicken_rings = {name: "Chicken Rings", address: "123456 Boundary St, London E2 7JE", phone_number: "06 26 98 71 89", category: Restaurant::CATEGORIES[1]}
tobacco = {name: "Tobacco", address: "7 Boundary St, London E2 7JE", phone_number: "06 34 86 67 89", category: Restaurant::CATEGORIES[3]}
nasa = {name: "Nasa", address: "7 Boundary St, London E2 7JE", phone_number: "06 24 56 60 29", category: Restaurant::CATEGORIES[4]}

[dishoom, pizza_east, chicken_rings, tobacco, nasa].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

#   Character.create(name: "Luke", movie: movies.first)
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
