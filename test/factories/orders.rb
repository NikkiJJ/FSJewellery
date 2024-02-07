FactoryBot.define do
  factory :order do
    user { nil }
    jewellery_item { nil }
    quantity { 1 }
    total_price { "9.99" }
  end
end
