class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :TEL
      t.string :access
      t.string :image
      t.string :shopping_hours
      t.text :content
      t.text :URL

      t.timestamps
    end
  end
end
