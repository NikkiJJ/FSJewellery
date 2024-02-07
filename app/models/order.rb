class Order < ApplicationRecord
  belongs_to :user
  belongs_to :jewellery_item
end
