class Order < ApplicationRecord
  belongs_to :customer, inverse_of: :orders
  belongs_to :status, inverse_of: :orders
  has_many :order_items, inverse_of: :order

  validates_presence_of :pst_rate, :gst_rate, :hst_rate, :status, :customer
end
