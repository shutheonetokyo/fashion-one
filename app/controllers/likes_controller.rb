class LikesController < ApplicationController
  
  def create
    current_user.likes.create!(shop_id: params[:shop_id])
    @shop = Shop.find(params[:shop_id])
  end

  def destroy
    current_user.likes.find_by(shop_id: params[:shop_id]).destroy!
    @shop = Shop.find(params[:shop_id])
  end
end  
