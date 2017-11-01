class Status < ApplicationRecord
  has_many :orders, inverse_of: :status

  validates_presence_of :title, :description
  validates_uniqueness_of :title
end
