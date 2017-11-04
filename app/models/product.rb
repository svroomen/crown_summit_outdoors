class Product < ApplicationRecord
  belongs_to :category, inverse_of: :products
  has_many :order_items, inverse_of: :product

  has_attached_file :image,
                    styles: {
                      large: '500x500>',
                      medium: '300x300>',
                      thumb: '115x115>'
                    }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates_presence_of :name, :description, :price, :stock_quantity,
                        :category, :gender
  validates_uniqueness_of :name, scope: :category

  # gender constants
  MALE = 'Male'.freeze
  FEMALE = 'Female'.freeze
  UNISEX = 'Unisex'.freeze

  # size type constants
  FOOTWEAR_SIZE_TYPE = 'Footwear'.freeze
  CLOTHING_SIZE_TYPE = 'Clothing'.freeze

  def image_attributes=(attributes)
    # Marks the attachment for destruction on next save,
    # if the attributes hash contains a _destroy flag
    # and a new image was not uploaded at the same time:
    image.clear if has_destroy_flag?(attributes) && !image.dirty?
  end

  def self.gender_options
    [
      ['Male', Product::MALE],
      ['Female', Product::FEMALE],
      ['Unisex', Product::UNISEX]
    ]
  end

  def self.product_size_types
    [
      ['None', nil],
      ['Clothing', Product::CLOTHING_SIZE_TYPE],
      ['Footwear', Product::FOOTWEAR_SIZE_TYPE]
    ]
  end

  def self.footwear_sizes
    [%w[7 7],
     %w[8 8],
     %w[9 9],
     %w[10 10],
     %w[11 11],
     %w[12 12],
     %w[13 13],
     %w[14 14],
     %w[15 15]]
  end

  def self.clothing_sizes
    [%w[XS Extra Small],
     %w[S Small],
     %w[M Medium],
     %w[L Large],
     %w[XL Extra Large],
     %w[2XL Double Extra Large]]
  end
end
