class Like < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  validates :user_id, uniqueness: {
    scope: :post_id,
    message: "は同じお店を2回以上保存済みにすることができません",
  }
end
