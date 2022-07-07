class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :id
      t.string :name
      t.text :description
      t.decimal :price
      t.string :SKU
      t.references :inventory_id, index: true, foreign_key: true
      t.references :category_id, index: true, foreign_key: true
      t.references :discount_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
