# used to view products
class ProductsController < ApplicationController
  include SessionsHelper
  before_action :check_if_logged_in, only: %i[order_invoice process_order]

  def index
    @product_search = ProductSearch.new(params)
    @product_search.query
  end

  def show
    @product = Product.find(params[:id])
  end

  def order_invoice
    load_clean_cart
    @products = Product.where(id: @cart.keys)
  end

  def process_order; end

  private

  def check_if_logged_in
    unless logged_in?
      flash[:error] = 'Unauthorized, please login'
      redirect_to home_index_path
    end
  end

  def load_clean_cart
    @cart = {}

    # convert the carts values to the correct data types
    session[:shopping_cart].each_pair do |k, v|
      @cart.store(k.to_i, quantity: v['quantity'].to_i, size: v['size'])
    end
  end
end
