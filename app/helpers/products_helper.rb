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
end
