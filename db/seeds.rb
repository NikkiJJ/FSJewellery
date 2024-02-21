admin = User.find_by(email: "admin@admin.com")

unless admin
  admin = User.create!(
    email: "admin@admin.com",
    password: "password123",
    admin: true
  )

  puts 'Admin user created'
end


JewelleryItem.create(
  name: 'Shell Necklace',
  description: 'Beautiful sterling silver',
  price: 99.00,
  user_id: admin.id,
  item_type: 'Necklace'
)

JewelleryItem.create(
  name: 'Moonstone Ring',
  description: 'Hand crafted ring',
  price: 70.00,
  user_id: admin.id,
  item_type: 'Ring'
)

JewelleryItem.create(
  name: 'Pearl Earrings',
  description: 'Pearls sourced from French Polynesia',
  price: 150.00,
  user_id: admin.id,
  item_type: 'Earrings'
)

puts 'Jewellery items created'
