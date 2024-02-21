class RenameTypeColumnInJewelleryItems < ActiveRecord::Migration[7.0]
  def change
    rename_column :jewellery_items, :type, :item_type
  end
end
