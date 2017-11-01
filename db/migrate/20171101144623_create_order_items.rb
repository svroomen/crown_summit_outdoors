class CreateOrderItems < ActiveRecord::Migration[5.1]
  def up
    create_table :order_items do |t|
      t.integer :quantity, null: false
      t.float :price, null: false
      t.references :product, null: false
      t.references :order, null: false
      t.timestamps
    end
    add_foreign_key :order_items, :products
    add_foreign_key :order_items, :orders
  end

  def down
    drop_table :order_items
  end
end
