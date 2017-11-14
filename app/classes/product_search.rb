# used to load products with filter options
class ProductSearch
  attr_reader :gender, :product_key_word, :products, :page

  def initialize(params)
    @gender = params[:gender]
    @product_key_word = params[:product_key_word]
    @size_type = params[:size_type]
    @category_name = params[:category_name] if params[:category_name].present?
    @category_id = params[:category_id] if params[:category_id].present?
    @page = params[:page]
    @products = []
  end

  def query
    products = Product.order(:name)
    products = products.where(gender: @gender) unless @gender.blank?
    products = products.where(category_id: category_id) unless category_id.nil?
    products = products.where(size_type: @size_type) unless @size_type.blank?
    unless @product_key_word.blank?
      products = products.where('(name like ?) OR (description like ?)',
                                "%#{@product_key_word}%",
                                "%#{@product_key_word}%")
    end
    @products = products.paginate(page: @page, per_page: 6)
  end

  def category_id
    # map out the id so the result is in an array, that way we can grab
    # the first object, and it will either be nil or an int value,
    # and will not throw an exception
    @category_id ||= Category.where(name: @category_name).map(&:id).first
  end
end
