class AddBrandRefToShops < ActiveRecord::Migration[6.1]
  def change
    add_reference :shops, :brand, foreign_key: true
  end
end
