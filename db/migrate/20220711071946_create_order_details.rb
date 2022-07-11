class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details, :id => false do |t|
      t.integer :id, primary_key: true
      t.references :user, null: false, foreign_key: true
      t.decimal :total

      t.timestamps
    end
  end
end
