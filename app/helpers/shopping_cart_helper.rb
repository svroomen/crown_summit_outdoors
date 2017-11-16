module ShoppingCartHelper
  def shopping_cart_count
    session[:shopping_cart].count
  end
end