class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.integer :id
      t.decimal :total
      t.string :user_id
      t.integer :payment_id

      t.timestamps
    end
  end
end
