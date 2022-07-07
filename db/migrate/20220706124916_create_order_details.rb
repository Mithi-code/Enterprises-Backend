class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.integer :id
      t.decimal :total
      t.references :user_id, index: true, foreign_key: true
      t.references :payment_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
