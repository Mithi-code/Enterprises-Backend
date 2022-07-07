class CreateUserPayments < ActiveRecord::Migration[7.0]
  def change
    create_table :user_payments do |t|
      t.integer :id
      t.references :user_id, index: true, foreign_key: true
      t.string :payment_type
      t.string :provider
      t.integer :account_no
      t.date :expiry

      t.timestamps
    end
  end
end
