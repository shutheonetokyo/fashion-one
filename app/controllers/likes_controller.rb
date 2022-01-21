class LikesController < ApplicationController
  
  def create
    current_user.likes.create!(shop_id: params[:shop_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    current_user.likes.find_by(shop_id: params[:shop_id]).destroy!
    redirect_back(fallback_location: root_path)
  end
end  
