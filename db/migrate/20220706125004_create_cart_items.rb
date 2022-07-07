class CreateCartItems < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_items do |t|
      t.integer :id
      t.integer :quantity
      t.references :session_id, index: true, foreign_key: true
      t.references :product_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
