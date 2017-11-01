class Product < ApplicationRecord
  belongs_to :category, inverse_of: :products
  has_many :order_items, inverse_of: :product

  validates_presence_of :name, :description, :price, :stock_quantity, :category
  validates_uniqueness_of :name, scope: :category
end
