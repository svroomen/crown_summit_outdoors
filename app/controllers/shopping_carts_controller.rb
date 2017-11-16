# this class lets you view, add, remove, and edit quantity of items in your cart
class ShoppingCartsController < ApplicationController
  # view items in your cart
  def index; end

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

  end

  # increase the quantity of an item in your cart
  def increase_items_count
    # ensure count cannot go above 5
  end

  # decrease the quantity of an item in your cart
  def decrease_items_count
    # ensure count cannot go below 1
  end

  private

  def shopping_cart_params
    params.require(:shopping_cart).permit(:product_id, :quantity, :size)
  end
end