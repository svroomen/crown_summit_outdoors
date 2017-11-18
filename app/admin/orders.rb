ActiveAdmin.register Order do
  permit_params :pst_rate, :gst_rate, :hst_rate, :status_id,
                :customer_id, :order_no
end
