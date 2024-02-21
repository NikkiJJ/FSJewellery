class AddTypeToJewelleryItems < ActiveRecord::Migration[7.0]
  def change
    add_column :jewellery_items, :type, :string
  end
end
