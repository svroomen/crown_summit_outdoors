class Province < ApplicationRecord
  has_many :customers, inverse_of: :province, dependent: :restrict_with_error

  validates_presence_of :name, :pst, :gst, :hst
  validates_uniqueness_of :name
end
