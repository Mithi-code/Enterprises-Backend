class CreateShoppingSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_sessions do |t|
      t.integer :id
      t.decimal :total
      t.string :user_id

      t.timestamps
    end
  end
end
