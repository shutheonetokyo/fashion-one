class ShopsController < ApplicationController  
  PER_PAGE = 10

  def index
    @q = Shop.ransack(params[:q])
    @shops = @q.result.page(params[:page]).per(PER_PAGE)
  end

  def show
    @shop = Shop.find(params[:id])
    @reviews = Review.where(shop_id:params[:id])
  end

  def map
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :address, :TEL, :access, :image, :shopping_hours, :content, :URL, :area_id, :genre_id, :brand_id, :map_address, :latitude, :longitude)
  end
end
