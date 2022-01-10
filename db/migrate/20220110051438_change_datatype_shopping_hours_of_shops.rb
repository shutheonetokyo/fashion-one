class ChangeDatatypeShoppingHoursOfShops < ActiveRecord::Migration[6.1]
  def change
    change_column :shops, :shopping_hours, :text
  end
end
