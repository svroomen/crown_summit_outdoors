# used to process orders
class OrdersController < ApplicationController
  include SessionsHelper
  before_action :check_if_logged_in, only: %i[show invoice submit_order]

  def show
    @order = Order.find(params[:id])

    # ensure the order belongs to the customer trying to look at it
    order_belongs_to_customer?(@order)

    calculate_costs(@order)
  end

  def invoice
    load_order_info
  end

  def submit_order
    load_order_info

    # create the order for the customer
    order = create_order

    # add items to the order based off what is in the cart
    add_order_items(order, @products)

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

  def calculate_costs(order)
    subtotal = 0
    order.order_items.each { |i| subtotal += (i.price * i.quantity.to_f) }

    pst_cost = (order.pst_rate * subtotal).round(2)
    gst_cost = (order.gst_rate * subtotal).round(2)
    hst_cost = (order.hst_rate * subtotal).round(2)
    total = subtotal + pst_cost + gst_cost + hst_cost

    @costs = { pst_cost: pst_cost, gst_cost: gst_cost, hst_cost: hst_cost,
               subtotal: subtotal.round(2), total: total.round(2) }
  end

  def order_belongs_to_customer?(order)
    unless order.customer_id == current_customer.id
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
      status_id: status_id,
      order_no: (1_000_000_000 + Random.rand(10_000_000_000 - 1_000_000_000))
    )
  end

  def add_order_items(order, products)
    # create an order item for each of the products in the cart
    products.each do |product|
      order.order_items.create!(
        quantity: @cart[product.id][:quantity],
        price: product.price,
        product_id: product.id,
        size: @cart[product.id][:size]
      )
    end
  end
end
