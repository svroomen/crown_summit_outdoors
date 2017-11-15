ActiveAdmin.register SiteInfo do
  permit_params :description, :customer_service_message, :email, :phone, :hours, :locations
end
