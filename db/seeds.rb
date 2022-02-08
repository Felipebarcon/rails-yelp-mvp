# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
le_bateau = { name:"Le bateau", address:"1227 Carouge", category:"french"}
sushi_shop = { name:"Sushi Shop", address:"1204 Genève", category:"japanese"}
la_frite = { name:"La baraque à frites", address:"1212 Grand-Lancy", category:"belgian"}
nemsroom = { name:"Nems Room", address:"1227 Carouge", category:"chinese"}
la_barca = { name:"La Barca", address:"1227 Carouge", category:"italian"}

[le_bateau, sushi_shop, la_frite, la_barca, nemsroom].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
