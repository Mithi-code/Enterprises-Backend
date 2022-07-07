class CreateCartItems < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_items do |t|
      t.integer :id
      t.integer :quantity
      t.integer :session_id
      t.integer :product_id

      t.timestamps
    end
  end
end
