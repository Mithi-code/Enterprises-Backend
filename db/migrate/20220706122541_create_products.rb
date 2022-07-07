class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :id
      t.string :name
      t.text :description
      t.decimal :price
      t.string :SKU
      t.integer :inventory_id
      t.integer :category_id
      t.integer :discount_id

      t.timestamps
    end
  end
end
