class SizeNotNullOnOrderItems < ActiveRecord::Migration[5.1]
  def up
    change_column_null :order_items, :size, false
  end

  def down
    change_column_null :order_items, :size, true
  end
end
