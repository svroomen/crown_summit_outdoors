# lets your retrieve site information
class SiteInfo < ApplicationRecord
  validates_presence_of :description, :customer_service_message, :email
  validates_format_of :email,
                      with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
                      message: 'must be a valid email address'
end