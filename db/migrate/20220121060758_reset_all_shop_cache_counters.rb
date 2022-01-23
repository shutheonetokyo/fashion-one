class ResetAllShopCacheCounters < ActiveRecord::Migration[6.1]

  def up
    Shop.find_each { |shop| Shop.reset_counters(shop.id, :likes_count) }
  end

  def down
  end
end
