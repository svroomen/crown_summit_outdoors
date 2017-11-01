class CreateCountries < ActiveRecord::Migration[5.1]
  def up
    create_table :countries do |t|
      t.string :name, null: false
      t.timestamps
    end
    add_index :countries, :name, unique: true
  end

  def down
    drop_table :countries
  end
end
