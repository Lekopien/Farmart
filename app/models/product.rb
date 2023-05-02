class Product < ApplicationRecord
  belongs_to :farmer
  belongs_to :category
  has_many :basket_product
  has_many :basket, through: :basket_product
  # has_one_attached :image
  # validates :image, presence: true

  
end


# class Product < ApplicationRecord
#   belongs_to :farmer
#   belongs_to :category
#   has_many :basket_product
#   has_many :basket, through: :basket_product
#   has_one_attached :image

#   validate :image_type

#   private

#   def image_type
#     if image.attached? && !image.content_type.in?(%w(image/jpeg image/png))
#       errors.add(:image, 'must be a JPEG or PNG')
#     end
#   end

#   def image_size
#     if image.attached? && image.byte_size > 5.megabytes
#       errors.add(:image, 'size must be less than 5MB')
#     end
#   end
# end

