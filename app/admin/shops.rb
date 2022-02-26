ActiveAdmin.register Shop do
  permit_params :name, :address, :TEL, :access, :shopping_hours, :image, :content, :URL, :area_id, :genre_id, :brand_id

  index do
    selectable_column
    id_column
    column :name
    column :area
    column :genre
    column :brand
    column :address
    column :TEL
    column :access
    actions
  end

  filter :name
  filter :address
  filter :TEL
  filter :URL

  form do |f|
    f.inputs do
      f.input :name
      f.input :area
      f.input :genre
      f.input :brand
      f.input :address
      f.input :TEL
      f.input :access
      f.input :shopping_hours
      f.input :image, :as => :file
      f.input :content
      f.input :URL
    end
    f.actions
  end
  
end
