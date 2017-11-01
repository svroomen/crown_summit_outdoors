class Country < ApplicationRecord
  has_many :customers, inverse_of: :country

  validates_presence_of :name
  validates_uniqueness_of :name
end
