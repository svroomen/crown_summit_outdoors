class ContactAboutUs < ActiveRecord::Migration[5.1]
  def up
    create_table :site_infos do |t|
      t.text :description, null: false
      t.text :customer_service_message, null: false
      t.string :email
      t.string :phone
      t.text :hours
      t.text :locations
      t.timestamps
    end
  end

  def down
    drop_table :site_infos
  end
end
