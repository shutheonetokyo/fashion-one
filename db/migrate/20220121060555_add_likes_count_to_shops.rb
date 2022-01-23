class AddLikesCountToShops < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :likes_count, :integer, default: 0
  end
end
