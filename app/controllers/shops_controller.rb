class ShopsController < ApplicationController

  PER_PAGE = 10

  def index
    @q = Shop.ransack(params[:q])
    @shops = @q.result.page(params[:page]).per(PER_PAGE)
    @areas = Area.find(params[:q][:area_id_eq])
    @genres = Genre.find(params[:q][:genre_id_eq])
  end

  def show
    @shop = Shop.find(params[:id])
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :address, :TEL, :access, :image, :shopping_hours, :content, :URL, :area_id, :genre_id)
  end

end
