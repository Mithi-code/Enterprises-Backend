class CreatePaymentDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_details do |t|
      t.integer :id
      t.integer :amount
      t.string :provider
      t.string :status
      t.references :order_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
