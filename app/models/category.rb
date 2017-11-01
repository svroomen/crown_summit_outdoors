class Category < ApplicationRecord
  has_many :products, inverse_of: :category

  validates_presence_of :name
  validates_uniqueness_of :name
end
