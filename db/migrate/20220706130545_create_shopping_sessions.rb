class CreateShoppingSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_sessions do |t|
      t.integer :id
      t.decimal :total
      t.references :user_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
