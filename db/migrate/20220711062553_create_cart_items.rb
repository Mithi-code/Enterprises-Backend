class CreateCartItems < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_items, :id => false do |t|
      t.integer :id
      t.references :shopping_session, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
