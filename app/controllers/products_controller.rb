# used to view products
class ProductsController < ApplicationController
  def index
    @product_search = ProductSearch.new(params)
    @product_search.query
  end

  def show

  end
end
