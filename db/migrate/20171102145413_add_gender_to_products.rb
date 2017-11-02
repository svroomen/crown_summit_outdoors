class AddGenderToProducts < ActiveRecord::Migration[5.1]
  def up
    add_column :products, :gender, :string
    change_column_null :products, :gender, false
  end

  def down
    remove_column :products, :gender
  end
end
