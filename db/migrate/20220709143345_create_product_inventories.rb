class CreateProductInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :product_inventories , :id => false do |t|
      t.integer :id, primary_key: true
      t.integer :quantity
      
      t.timestamps
    end
  end
end
