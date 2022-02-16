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

mc_donalds = {name: 'McDonalds', address: 'Gran via 3', phone_number: '444777666', category: 'italian'}
pf_changs = {name: 'PfChang', address: 'Gran via 5', phone_number: '111777666', category: 'chinese'}
sushi = {name: 'MiSushi', address: 'Gran via 25', phone_number: '111777444', category: 'japanese'}
italian_resto = {name: 'MySpagetti', address: 'Gran via 35', phone_number: '111999444', category: 'italian'}
bristol = {name: 'Bristol', address: 'Gran via 45', phone_number: '222999444', category: 'french'}

restaurants = [mc_donalds, pf_changs, sushi, italian_resto, bristol]

restaurants.each do |attr|
  restaurant = Restaurant.create!(attr)
  puts "Created #{restaurant.name}"
end

puts "finished!"
