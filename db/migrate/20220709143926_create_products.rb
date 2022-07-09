class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products , :id => false do |t|
      t.integer :id
      t.string :name
      t.text :description
      t.decimal :price
      t.string :SKU
      t.references :product_inventories, index: true, foreign_key: true
      t.references :product_categories, index: true, foreign_key: true
      t.references :discount, index: true, foreign_key: true

      t.timestamps
    end
  end
end
