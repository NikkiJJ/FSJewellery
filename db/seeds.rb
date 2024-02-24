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
  { name: 'Shell Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Pearl Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Driftwood Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Moonstone Ring', description: 'Hand crafted ring', price: 70.00, user_id: admin.id, item_type: 'Ring', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Beach Bracelet', description: 'Hand crafted silver bracelet', price: 70.00, user_id: admin.id, item_type: 'Bracelet', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Pearl Earrings', description: 'Pearls sourced from French Polynesia', price: 150.00, user_id: admin.id, item_type: 'Earrings', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Jade Cufflinks', description: 'Jade seaglass cufflinks', price: 150.00, user_id: admin.id, item_type: 'Cufflinks', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Driftwood Brooch', description: 'From the beaches of Greece', price: 150.00, user_id: admin.id, item_type: 'Brooch', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Gold Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Heart Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Driftwood Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Moonstone Ring', description: 'Hand crafted ring', price: 70.00, user_id: admin.id, item_type: 'Ring', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Beach Bracelet', description: 'Hand crafted silver bracelet', price: 70.00, user_id: admin.id, item_type: 'Bracelet', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Pearl Earrings', description: 'Pearls sourced from French Polynesia', price: 150.00, user_id: admin.id, item_type: 'Earrings', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Jade Cufflinks', description: 'Jade seaglass cufflinks', price: 150.00, user_id: admin.id, item_type: 'Cufflinks', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Driftwood Brooch', description: 'From the beaches of Greece', price: 150.00, user_id: admin.id, item_type: 'Brooch', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Shell Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Pearl Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Driftwood Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Moonstone Ring', description: 'Hand crafted ring', price: 70.00, user_id: admin.id, item_type: 'Ring', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Beach Bracelet', description: 'Hand crafted silver bracelet', price: 70.00, user_id: admin.id, item_type: 'Bracelet', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Pearl Earrings', description: 'Pearls sourced from French Polynesia', price: 150.00, user_id: admin.id, item_type: 'Earrings', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Jade Cufflinks', description: 'Jade seaglass cufflinks', price: 150.00, user_id: admin.id, item_type: 'Cufflinks', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Driftwood Brooch', description: 'From the beaches of Greece', price: 150.00, user_id: admin.id, item_type: 'Brooch', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Gold Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Heart Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Driftwood Necklace', description: 'Beautiful sterling silver', price: 99.00, user_id: admin.id, item_type: 'Necklace', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Moonstone Ring', description: 'Hand crafted ring', price: 70.00, user_id: admin.id, item_type: 'Ring', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Beach Bracelet', description: 'Hand crafted silver bracelet', price: 70.00, user_id: admin.id, item_type: 'Bracelet', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Pearl Earrings', description: 'Pearls sourced from French Polynesia', price: 150.00, user_id: admin.id, item_type: 'Earrings', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Jade Cufflinks', description: 'Jade seaglass cufflinks', price: 150.00, user_id: admin.id, item_type: 'Cufflinks', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
  { name: 'Driftwood Brooch', description: 'From the beaches of Greece', price: 150.00, user_id: admin.id, item_type: 'Brooch', image_url: 'https://plus.unsplash.com/premium_photo-1671641737553-3d669dc1f927?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' }
]

jewellery_data.each do |jewel|
  jewellery_item = JewelleryItem.create(jewel.except(:image_url))
  jewellery_item.image.attach(io: URI.open(jewel[:image_url]), filename: "#{jewel[:name]}.jpg")
end


puts 'Jewellery items created'
