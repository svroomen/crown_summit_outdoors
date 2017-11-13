class AddCityToCustomer < ActiveRecord::Migration[5.1]
  def up
    add_column :customers, :city, :string
    change_column_null :customers, :city, null: false
  end

  def down
    remove_column :customers, :city
  end
end
