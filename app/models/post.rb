class Post < ApplicationRecord
  validates :grans_name,  presence: true, length: { maximum: 30 }
  validates :grans_image, presence: true
  validates :plants_name,  presence: true, length: { maximum: 30 }
  validates :plants_image, presence: true
  
  mount_uploader :image, ImageUploader
end
