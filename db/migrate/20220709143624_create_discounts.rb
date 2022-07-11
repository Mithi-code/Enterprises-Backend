class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts, :id => false do |t|
      t.integer :id, primary_key: true
      t.string :name
      t.text :desciption
      t.decimal :discount_percent
      t.boolean :active


      t.timestamps
    end
  end
end
