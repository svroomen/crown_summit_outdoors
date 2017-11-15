module ProductsHelper
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
end
