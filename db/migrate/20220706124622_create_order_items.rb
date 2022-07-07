class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.integer :id
      t.references :order_id, index: true, foreign_key: true
      t.references :product_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
