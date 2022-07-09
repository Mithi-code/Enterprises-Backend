class CreateProductCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :product_categories, :id => false do |t|
      t.integer :id, primary_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
