class CreatePaymentDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_details, :id => false do |t|
      t.integer :id, primary_key: true
      t.references :order_details, null: false, foreign_key: true
      t.integer :amount
      t.string :provider
      t.string :status

      t.timestamps
    end
  end
end
