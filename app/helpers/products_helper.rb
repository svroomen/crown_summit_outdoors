module ProductsHelper
  include SessionsHelper

  def clothing_size_options
    Product.clothing_sizes
  end

  def footwear_size_options
    Product.footwear_sizes
  end

  def quantity_options
    [%w[1 1],
     %w[2 2],
     %w[3 3],
     %w[4 4],
     %w[5 5]]
  end

  def clothing_type
    Product::CLOTHING_SIZE_TYPE
  end

  def currency(amount)
    format('$%.2f', amount)
  end

  def percent(value)
    format('%.2f%', (value * 100))
  end

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
