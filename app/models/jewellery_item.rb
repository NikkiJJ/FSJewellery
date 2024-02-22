class JewelleryItem < ApplicationRecord
  belongs_to :user
  enum item_type: { necklace: 'Necklace', bracelet: 'Bracelet', earrings: 'Earrings', ring: 'Ring', brooch: 'Brooch', cufflinks: 'Cufflinks' }
  validates :item_type, presence: true, inclusion: { in: item_types.keys }
end
