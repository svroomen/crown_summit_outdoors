class CreateProducts < ActiveRecord::Migration[5.1]
  def up
    create_table :products do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.float :price, null: false
      t.integer :stock_quantity, null: false
      t.references :category, null: false
      t.timestamps
    end
    add_index :products, %i[name category_id], unique: true
    add_foreign_key :products, :categories
  end

  def down
    drop_table :products
  end
end
