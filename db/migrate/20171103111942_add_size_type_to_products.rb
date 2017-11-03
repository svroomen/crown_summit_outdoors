class AddSizeTypeToProducts < ActiveRecord::Migration[5.1]
  def up
    # this should be another table but if we keep adding
    # tables the size will become to large to complete the
    # assignment
    add_column :products, :size_type, :string
    add_column :order_items, :size, :string
  end

  def down
    remove_column :products, :size_type
    remove_column :order_items, :size
  end
end
