module Seeds
  module Products
    # contains the method to create any product
    class ProductCreation
      def self.create_product(params)
        Category.find_by_name(params[:c_name]).products.where(
          name: params[:p_name]
        ).first_or_create!(
          description: params[:description],
          price: params[:price],
          stock_quantity: params[:quantity],
          gender: params[:gender],
          size_type: params[:size_type],
          image: locate_image(params[:i_name])
        )
      end

      def self.locate_image(image_name)
        File.new(File.join(Rails.root,
                           'app',
                           'assets',
                           'images',
                           image_name))
      end
    end
  end
end
