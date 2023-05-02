class Product < ApplicationRecord
  # has_one_attached :product_img
  belongs_to :farmer
  belongs_to :category
  has_many :basket_product
  has_many :basket, through: :basket_product

  # def get_image_url
  #   if self.product_img.blob
  #           my_object_attachment = self.product_img.blob.key
  #           image_url = Cloudinary::Utils.cloudinary_url(my_object_attachment)
                 
  #     end
  #   end
  
end
