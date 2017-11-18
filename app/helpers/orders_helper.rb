module OrdersHelper
  # returns a has containing the orders cost information
  def calculate_order_costs(products, cart)
    subtotal = 0
    products.each { |p| subtotal += (p.price * cart[p.id][:quantity].to_f) }

    pst_cost = (current_customer.province.pst * subtotal).round(2)
    gst_cost = (current_customer.province.gst * subtotal).round(2)
    hst_cost = (current_customer.province.hst * subtotal).round(2)
    total = subtotal + pst_cost + gst_cost + hst_cost

    { pst_cost: pst_cost, gst_cost: gst_cost, hst_cost: hst_cost,
      subtotal: subtotal.round(2), total: total.round(2) }
  end
end
