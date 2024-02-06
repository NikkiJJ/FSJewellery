class CreateJewelleryItems < ActiveRecord::Migration[7.0]
  def change
    create_table :jewellery_items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image_url
      t.boolean :sold
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
