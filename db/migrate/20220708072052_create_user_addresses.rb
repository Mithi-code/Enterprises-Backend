class CreateUserAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :user_addresses, :id => false do |t|
      t.integer :id
      t.references :user, null: false, foreign_key: true
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.integer :postal_code
      t.string :country
      t.string :telephone
      t.string :mobile

      t.timestamps
    end
  end
end
