class Shop < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :area, optional: true
  belongs_to :genre, optional: true

  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_many :reviews, dependent: :destroy
  has_many :reviewed_users, through: :reviews, source: :user

  def liked_by?(user)
    likes.find_by(user_id: user&.id).present?
  end

  def reviewed_by?(user)
    reviews.find_by(user_id: user&.id).present?
  end


  def average_score
    unless self.reviews.empty?
      reviews.average(:score).round(1).to_f
    else
      0.0
    end
  end

  geocoded_by :map_address
  after_validation :geocode, if: :map_address_changed?
end
