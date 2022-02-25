class ShopsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  PER_PAGE = 10

  def index
    @q = Shop.ransack(params[:q])
    @shops = @q.result.page(params[:page]).per(PER_PAGE)
  end

  def show
    @shop = Shop.find(params[:id])
    @reviews = Review.where(shop_id:params[:id])
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = current_user.shops.build(shop_params)
    if @shop.save
      redirect_to shops_path, notice: "登録しました"
    else
      flash.now[:alert] = "登録に失敗しました"
      render :new
    end
  end
  
  private

  def shop_params
    params.require(:shop).permit(:name, :address, :TEL, :access, :image, :shopping_hours, :content, :URL, :area_id, :genre_id, :brand_id, :map_address, :latitude, :longitude)
  end
end
