class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :self_introduction, :string
    add_column :users, :image, :string
  end
end
