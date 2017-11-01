class Customer < ApplicationRecord
  has_secure_password

  belongs_to :country, inverse_of: :customers
  belongs_to :province, inverse_of: :customers
  has_many :orders, inverse_of: :customer

  validates_presence_of :first_name, :last_name, :address, :postal_code, :email,
                        :password_digest, :country, :province
  validates_uniqueness_of :email, message: 'Username already in use'
  validates_format_of :email,
                      with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
                      message: 'Please enter a valid email address'
end
