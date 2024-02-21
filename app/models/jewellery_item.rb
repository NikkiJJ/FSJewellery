class JewelleryItem < ApplicationRecord
  belongs_to :user
  enum item_type: { necklace: 'Necklace', bracelet: 'Bracelet', earring: 'Earring' }
  validates :item_type, presence: true, inclusion: { in: item_types.keys }
end

