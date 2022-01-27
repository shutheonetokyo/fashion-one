class RemoveScoreFromReviews < ActiveRecord::Migration[6.1]
  def change
    remove_column :reviews, :score, :float
  end
end
