class CreatePaymentDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_details do |t|
      t.integer :id
      t.integer :order_id
      t.integer :amount
      t.string :provider
      t.string :status

      t.timestamps
    end
  end
end
