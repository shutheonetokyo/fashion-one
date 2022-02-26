class Shop < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :area, optional: true
  belongs_to :genre, optional: true
  belongs_to :brand, optional: true

  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_many :reviews, dependent: :destroy
  has_many :reviewed_users, through: :reviews, source: :user

  validates :name, presence: true, length: {maximum: 30}
  validates :area_id, presence: true
  validates :genre_id, presence: true
  validates :brand_id, presence: true


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

end
