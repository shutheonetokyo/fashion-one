class StaticPagesController < ApplicationController
  
  PER_PAGE = 10

  def home
    @q = Shop.ransack(params[:q])
    @shops = @q.result.page(params[:page]).per(PER_PAGE)
    @areas = Area.all
    @genres = Genre.all
  end

end
