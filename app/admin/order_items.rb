ActiveAdmin.register OrderItem do
  permit_params :quantity, :price, :product_id, :order_id, :size
end
