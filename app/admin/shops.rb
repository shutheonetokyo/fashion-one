ActiveAdmin.register Shop do
  permit_params :name, :address, :TEL, :access, :shopping_hours, :image, :content, :URL, :area_id, :genre_id, :map_address

  index do
    selectable_column
    id_column
    column :name
    column :area
    column :genre
    column :address
    column :map_address
    column :TEL
    column :access
    column :iamge
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
      f.input :address
      f.input :map_address
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
