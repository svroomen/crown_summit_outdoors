class Order < ApplicationRecord
  belongs_to :customer, inverse_of: :orders
  belongs_to :status, inverse_of: :orders
  has_many :order_items, inverse_of: :order, dependent: :restrict_with_error

  validates_presence_of :pst_rate, :gst_rate, :hst_rate,
                        :status, :customer, :order_no
end
