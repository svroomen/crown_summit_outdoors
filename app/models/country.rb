class Country < ApplicationRecord
  has_many :customers, inverse_of: :country, dependent: :restrict_with_error

  validates_presence_of :name
  validates_uniqueness_of :name
end
