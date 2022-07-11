class CreateShoppingSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_sessions, :id => false do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :id, primary_key: true
      t.decimal :total

      t.timestamps
    end
  end
end
