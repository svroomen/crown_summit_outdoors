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

  validates_presence_of :name, :description, :price, :stock_quantity, :category
  validates_uniqueness_of :name, scope: :category

  def image_attributes=(attributes)
    # Marks the attachment for destruction on next save,
    # if the attributes hash contains a _destroy flag
    # and a new image was not uploaded at the same time:
    image.clear if has_destroy_flag?(attributes) && !image.dirty?
  end
end
