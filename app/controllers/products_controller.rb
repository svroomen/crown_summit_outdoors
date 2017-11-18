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
    load_order_info
  end

  def process_order
    load_order_info

    # create the order for the customer
    order = create_order

    # add items to the order based off what is in the cart
    add_order_items(order)

    # now empty the cart since the order has been submitted
    session[:shopping_cart] = {}
  end

  protected

  def check_if_logged_in
    unless logged_in?
      flash[:error] = 'Unauthorized, please login'
      redirect_to home_index_path
    end
  end

  private

  def load_clean_cart
    @cart = {}

    # convert the carts values to the correct data types
    session[:shopping_cart].each_pair do |k, v|
      @cart.store(k.to_i, quantity: v['quantity'].to_i, size: v['size'])
    end
  end

  def load_order_info
    load_clean_cart
    @products = Product.where(id: @cart.keys)
  end

  def create_order
    status_id = Status.processing.id
    province = current_customer.province

    current_customer.orders.create!(
      pst_rate: province.pst,
      gst_rate: province.gst,
      hst_rate: province.hst,
      status_id: status_id
    )
  end

  def add_order_items(order)
    # create an order item for each of the products in the cart
    @products.each do |product|
      order.order_items.create!(
        quantity: @cart[product.id][:quantity],
        price: product.price,
        product_id: product.id,
        size: @cart[product.id][:size]
      )
    end
  end
end
