class Like < ApplicationRecord
  belongs_to :user
  belongs_to :shop, counter_cache: :likes_count
  validates :user_id, uniqueness: {
    scope: :shop_id,
    message: "は同じお店を2回以上保存済みにすることができません",
  }
end
