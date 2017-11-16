# this class lets you view, add, remove, and edit quantity of items in your cart
class ShoppingCartsController < ApplicationController
  # view items in your cart
  def index
    product_ids = session[:shopping_cart].keys.map(&:to_i)
    @products = Product.where(id: product_ids)
  end

  # add an item to your cart
  def create
    product_id = shopping_cart_params[:product_id]

    # ensure the product is not added to the cart twice
    return if session[:shopping_cart][product_id].present?

    session[:shopping_cart][product_id] = {
      quantity: shopping_cart_params[:quantity],
      size: shopping_cart_params[:size]
    }

    @product = Product.find(product_id.to_i)
  end

  # remove an item from your cart
  def destroy
    @product_id = params[:product_id].to_s

    # remove the item from the session
    session[:shopping_cart].delete(@product_id)

    calculate_order_total
  end

  # increase the quantity of an item in your cart
  def increase_items_count
    # ensure count cannot go above 5
    s_id = params[:product_id].to_s
    return if session[:shopping_cart][s_id]['quantity'].to_i >= 5

    session[:shopping_cart][s_id]['quantity'] =
      session[:shopping_cart][s_id]['quantity'].to_i + 1

    @product = Product.find(params[:product_id].to_i)
    calculate_order_total
  end

  # decrease the quantity of an item in your cart
  def decrease_items_count
    # ensure count cannot go below 1
    s_id = params[:product_id].to_s
    return if session[:shopping_cart][s_id]['quantity'].to_i <= 1

    session[:shopping_cart][s_id]['quantity'] =
      session[:shopping_cart][s_id]['quantity'].to_i - 1

    @product = Product.find(params[:product_id].to_i)
    calculate_order_total
  end

  private

  def shopping_cart_params
    params.require(:shopping_cart).permit(:product_id, :quantity, :size)
  end

  def calculate_order_total
    # recalculate the order total
    @order_total = 0
    products_ids = session[:shopping_cart].keys.map(&:to_i)
    Product.where(id: products_ids).each do |p|
      @order_total += p.price * session[:shopping_cart][p.id.to_s]['quantity'].to_f
    end
  end

end