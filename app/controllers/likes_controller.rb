class LikesController < ApplicationController
  
  def create
    if user_signed_in?
      current_user.likes.create!(shop_id: params[:shop_id])
      @shop = Shop.find(params[:shop_id])      
    else
      redirect_back(fallback_location: root_path, alert: "ログインもしくはアカウント登録してください。")
    end
  end

  def destroy
    if user_signed_in?
      current_user.likes.find_by(shop_id: params[:shop_id]).destroy!
      @shop = Shop.find(params[:shop_id])
    else
      redirect_back(fallback_location: root_path, alert: "ログインもしくはアカウント登録してください。")
    end
  end
end  
