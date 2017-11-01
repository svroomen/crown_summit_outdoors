class Province < ApplicationRecord
  has_many :customers, inverse_of: :province

  validates_presence_of :name, :pst, :gst, :hst
  validates_uniqueness_of :name
end
