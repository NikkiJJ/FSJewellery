# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
admin = User.create!(
  email: "admin@admin.com",
  password: "password123", # Note: You should hash the password properly in a real application
  admin: true
)

puts 'Admin user created'

JewelleryItem.create(
  name: 'Shell Necklace',
  description: 'Beautiful sterling silver',
  price: 99.00,
  user_id: admin.id
)

JewelleryItem.create(
  name: 'Moonstone Ring',
  description: 'Hand crafted ring',
  price: 70.00,
  user_id: admin.id
)

JewelleryItem.create(
  name: 'Pearl Earrings',
  description: 'Pearls sourced from French Polynesia',
  price: 150.00,
  user_id: admin.id
)

puts 'Jewellery items created'
