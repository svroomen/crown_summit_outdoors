class CreateCustomers < ActiveRecord::Migration[5.1]
  def up
    create_table :customers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :address, null: false
      t.string :postal_code, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.references :country, null: false
      t.references :province, null: false
      t.timestamps
    end
    add_index :customers, :email, unique: true
    add_foreign_key :customers, :countries
    add_foreign_key :customers, :provinces
  end

  def down
    drop_table :customers
  end
end
