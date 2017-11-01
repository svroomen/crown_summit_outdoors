class CreateStatuses < ActiveRecord::Migration[5.1]
  def up
    create_table :statuses do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.timestamps
    end
    add_index :statuses, :title, unique: true
  end

  def down
    drop_table :statuses
  end
end
