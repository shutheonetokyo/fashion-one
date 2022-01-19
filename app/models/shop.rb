class Shop < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :area
  belongs_to :genre

  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
end
