class CreateOrders < ActiveRecord::Migration[5.1]
  def up
    create_table :orders do |t|
      t.float :pst_rate, null: false
      t.float :gst_rate, null: false
      t.float :hst_rate, null: false
      t.references :status, null: false
      t.references :customer, null: false
      t.timestamps
    end
    add_foreign_key :orders, :statuses
    add_foreign_key :orders, :customers
  end

  def down
    drop_table :orders
  end
end
