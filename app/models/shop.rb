class Shop < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :area
  belongs_to :genre

  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_many :reviews, dependent: :destroy

  def liked_by?(user)
    likes.exists?(user_id: user.id)
  end

  def avg_score
    unless self.reviews.empty?
      reviews.average(:score).round(1).to_f
    else
      0.0
    end
  end

  def review_score_percentage
    unless self.reviews.empty?
      reviews.average(:score).round(1).to_f*100/5
    else
      0.0
    end
  end
end
