class Shop < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :area
end
