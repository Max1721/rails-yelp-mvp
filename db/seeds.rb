# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "06 76 23 80 65", category: "chinese" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "06 76 23 80 65", category: "italian" }
east_mamma = { name: "East Mamma", address: "124 avenue du faubourg St Antoine, 75011 Paris", phone_number: "06 76 23 80 65", category: "italian" }
la_popotte = { name: "La Popotte", address: "2 rue de Levis, 75017, Paris", phone_number: "06 68 98 09 67", category: "french" }
nem_dore = { name: "Nem Dore", address: "2 avenue Foch, 75008, Paris", phone_number: "06 68 98 09 67", category: "chinese" }

[dishoom, pizza_east, east_mamma, la_popotte, nem_dore].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
