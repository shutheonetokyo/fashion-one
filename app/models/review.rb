class Review < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  validates :score, presence: true
  validates :title, presence: true
  validates :content, presence: true
end
