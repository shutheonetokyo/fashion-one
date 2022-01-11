class StaticPagesController < ApplicationController
  
  PER_PAGE = 20

  def home
    @q = Shop.ransack(params[:q])
    @shops = @q.result.page(params[:page]).per(PER_PAGE)
  end

end
