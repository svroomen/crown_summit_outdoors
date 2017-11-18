class OrderNo < ActiveRecord::Migration[5.1]
  def up
    # add the new column
    add_column :orders, :order_no, :bigint

    # we need to loop so that each record gets a different order no
    Order.all.each do |order|
      order.update_attributes!(
        order_no: (1_000_000_000 + Random.rand(10_000_000_000 - 1_000_000_000))
      )
    end

    # make the column not null
    change_column_null :orders, :order_no, false
  end

  def down
    remove_column :orders, :order_no
  end
end
