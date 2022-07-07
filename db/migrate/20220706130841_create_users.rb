class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :id
      t.string :username
      t.text :password
      t.decimal :first_name
      t.string :last_name
      t.string :address
      t.integer :telephone

      t.timestamps
    end
  end
end
