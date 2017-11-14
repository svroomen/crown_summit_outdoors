class Customer < ApplicationRecord
  has_secure_password

  belongs_to :country, inverse_of: :customers
  belongs_to :province, inverse_of: :customers
  has_many :orders, inverse_of: :customer

  validates_presence_of :first_name, :last_name, :address, :postal_code, :email,
                        :country_id, :province_id, :city
  validates :password, presence: true, length: { minimum: 8 }, on: :create
  validates_length_of :password, minimum: 8, on: :update, if: :password
  validates_uniqueness_of :email, message: 'already in use'
  validates_format_of :email,
                      with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
                      message: 'must be a valid email address'

  def full_name
    "#{first_name} #{last_name}"
  end
end
