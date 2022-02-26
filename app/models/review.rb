class Review < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user
  belongs_to :shop

  validates :score, presence: true
  validates :title, presence: true
  validates :content, presence: true
end
