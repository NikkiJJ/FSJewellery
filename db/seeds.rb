require 'open-uri'

admin = User.find_by(email: "admin@admin.com")

unless admin
  admin = User.create!(
    email: "admin@admin.com",
    password: "password123",
    admin: true
  )

  puts 'Admin user created'
end



jewellery_data = [
  { name: 'Shell Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Pearl Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Driftwood Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Moonstone Ring', description: 'Hand crafted ring', price: 70.00, user_id: admin.id, item_type: 'Ring', image_path: 'rings.jpg' },
  { name: 'Beach Bracelet', description: 'Hand crafted silver bracelet', price: 70.00, user_id: admin.id, item_type: 'Bracelet', image_path: 'rings.jpg' },
  { name: 'Pearl Earrings', description: 'Pearls sourced from French Polynesia', price: 150.00, user_id: admin.id, item_type: 'Earrings', image_path: 'rings.jpg' },
  { name: 'Jade Cufflinks', description: 'Jade seaglass cufflinks', price: 150.00, user_id: admin.id, item_type: 'Cufflinks', image_path: 'rings.jpg' },
  { name: 'Driftwood Brooch', description: 'From the beaches of Greece', price: 150.00, user_id: admin.id, item_type: 'Brooch', image_path: 'rings.jpg' },
  { name: 'Gold Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Heart Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Driftwood Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Moonstone Ring', description: 'Hand crafted ring', price: 70.00, user_id: admin.id, item_type: 'Ring', image_path: 'rings.jpg' },
  { name: 'Beach Bracelet', description: 'Hand crafted silver bracelet', price: 70.00, user_id: admin.id, item_type: 'Bracelet', image_path: 'rings.jpg' },
  { name: 'Pearl Earrings', description: 'Pearls sourced from French Polynesia', price: 150.00, user_id: admin.id, item_type: 'Earrings', image_path: 'rings.jpg' },
  { name: 'Jade Cufflinks', description: 'Jade seaglass cufflinks', price: 150.00, user_id: admin.id, item_type: 'Cufflinks', image_path: 'rings.jpg' },
  { name: 'Driftwood Brooch', description: 'From the beaches of Greece', price: 150.00, user_id: admin.id, item_type: 'Brooch', image_path: 'rings.jpg' },
  { name: 'Shell Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Pearl Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Driftwood Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Moonstone Ring', description: 'Hand crafted ring', price: 70.00, user_id: admin.id, item_type: 'Ring', image_path: 'rings.jpg' },
  { name: 'Beach Bracelet', description: 'Hand crafted silver bracelet', price: 70.00, user_id: admin.id, item_type: 'Bracelet', image_path: 'rings.jpg' },
  { name: 'Pearl Earrings', description: 'Pearls sourced from French Polynesia', price: 150.00, user_id: admin.id, item_type: 'Earrings', image_path: 'rings.jpg' },
  { name: 'Jade Cufflinks', description: 'Jade seaglass cufflinks', price: 150.00, user_id: admin.id, item_type: 'Cufflinks', image_path: 'rings.jpg' },
  { name: 'Driftwood Brooch', description: 'From the beaches of Greece', price: 150.00, user_id: admin.id, item_type: 'Brooch', image_path: 'rings.jpg' },
  { name: 'Gold Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Heart Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Driftwood Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Moonstone Ring', description: 'Hand crafted ring', price: 70.00, user_id: admin.id, item_type: 'Ring', image_path: 'rings.jpg' },
  { name: 'Beach Bracelet', description: 'Hand crafted silver bracelet', price: 70.00, user_id: admin.id, item_type: 'Bracelet', image_path: 'rings.jpg' },
  { name: 'Pearl Earrings', description: 'Pearls sourced from French Polynesia', price: 150.00, user_id: admin.id, item_type: 'Earrings', image_path: 'rings.jpg' },
  { name: 'Jade Cufflinks', description: 'Jade seaglass cufflinks', price: 150.00, user_id: admin.id, item_type: 'Cufflinks', image_path: 'rings.jpg' },
  { name: 'Driftwood Brooch', description: 'From the beaches of Greece', price: 150.00, user_id: admin.id, item_type: 'Brooch', image_path: 'rings.jpg' },
  { name: 'Shell Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Pearl Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Driftwood Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Moonstone Ring', description: 'Hand crafted ring', price: 70.00, user_id: admin.id, item_type: 'Ring', image_path: 'rings.jpg' },
  { name: 'Beach Bracelet', description: 'Hand crafted silver bracelet', price: 70.00, user_id: admin.id, item_type: 'Bracelet', image_path: 'rings.jpg' },
  { name: 'Pearl Earrings', description: 'Pearls sourced from French Polynesia', price: 150.00, user_id: admin.id, item_type: 'Earrings', image_path: 'rings.jpg' },
  { name: 'Jade Cufflinks', description: 'Jade seaglass cufflinks', price: 150.00, user_id: admin.id, item_type: 'Cufflinks', image_path: 'rings.jpg' },
  { name: 'Driftwood Brooch', description: 'From the beaches of Greece', price: 150.00, user_id: admin.id, item_type: 'Brooch', image_path: 'rings.jpg' },
  { name: 'Gold Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Heart Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Driftwood Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Moonstone Ring', description: 'Hand crafted ring', price: 70.00, user_id: admin.id, item_type: 'Ring', image_path: 'rings.jpg' },
  { name: 'Beach Bracelet', description: 'Hand crafted silver bracelet', price: 70.00, user_id: admin.id, item_type: 'Bracelet', image_path: 'rings.jpg' },
  { name: 'Pearl Earrings', description: 'Pearls sourced from French Polynesia', price: 150.00, user_id: admin.id, item_type: 'Earrings', image_path: 'rings.jpg' },
  { name: 'Jade Cufflinks', description: 'Jade seaglass cufflinks', price: 150.00, user_id: admin.id, item_type: 'Cufflinks', image_path: 'rings.jpg' },
  { name: 'Driftwood Brooch', description: 'From the beaches of Greece', price: 150.00, user_id: admin.id, item_type: 'Brooch', image_path: 'rings.jpg' },
  { name: 'Shell Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Pearl Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Driftwood Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Moonstone Ring', description: 'Hand crafted ring', price: 70.00, user_id: admin.id, item_type: 'Ring', image_path: 'rings.jpg' },
  { name: 'Beach Bracelet', description: 'Hand crafted silver bracelet', price: 70.00, user_id: admin.id, item_type: 'Bracelet', image_path: 'rings.jpg' },
  { name: 'Pearl Earrings', description: 'Pearls sourced from French Polynesia', price: 150.00, user_id: admin.id, item_type: 'Earrings', image_path: 'rings.jpg' },
  { name: 'Jade Cufflinks', description: 'Jade seaglass cufflinks', price: 150.00, user_id: admin.id, item_type: 'Cufflinks', image_path: 'rings.jpg' },
  { name: 'Driftwood Brooch', description: 'From the beaches of Greece', price: 150.00, user_id: admin.id, item_type: 'Brooch', image_path: 'rings.jpg' },
  { name: 'Gold Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Heart Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Driftwood Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_path: 'rings.jpg' },
  { name: 'Moonstone Ring', description: 'Hand crafted ring', price: 70.00, user_id: admin.id, item_type: 'Ring', image_path: 'rings.jpg' },
  { name: 'Beach Bracelet', description: 'Hand crafted silver bracelet', price: 70.00, user_id: admin.id, item_type: 'Bracelet', image_path: 'rings.jpg' },
  { name: 'Pearl Earrings', description: 'Pearls sourced from French Polynesia', price: 150.00, user_id: admin.id, item_type: 'Earrings', image_path: 'rings.jpg' },
  { name: 'Jade Cufflinks', description: 'Jade seaglass cufflinks', price: 150.00, user_id: admin.id, item_type: 'Cufflinks', image_path: 'rings.jpg' },
  { name: 'Driftwood Brooch', description: 'From the beaches of Greece', price: 150.00, user_id: admin.id, item_type: 'Brooch', image_path: 'rings.jpg' }
]

jewellery_data.each do |jewel|
  jewellery_item = JewelleryItem.create(jewel.except(:image_path))
  file_path = Rails.root.join('app', 'assets', 'images', jewel[:image_path])
  jewellery_item.image.attach(io: File.open(file_path), filename: jewel[:image_path])
end

puts 'Jewellery items created'
