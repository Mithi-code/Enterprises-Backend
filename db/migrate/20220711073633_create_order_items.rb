class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items, :id => false do |t|
      t.integer :id
      t.references :order_details, null: false, foreign_key: true
      t.references :payment_details, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
