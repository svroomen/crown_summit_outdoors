class CreateProvinces < ActiveRecord::Migration[5.1]
  def up
    create_table :provinces do |t|
      t.string :name, null: false
      t.float :pst, null: false
      t.float :gst, null: false
      t.float :hst, null: false
      t.timestamps
    end
    add_index :provinces, :name, unique: true
  end

  def down
    drop_table :provinces
  end
end
