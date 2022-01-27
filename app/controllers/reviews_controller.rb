class ReviewsController < ApplicationController

  def index
    @shop = Shop.find(params[:shop_id])
    @reviews = @shop.reviews
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to shop_reviews_path(@review.shop)
    else
      @shop = Shop.find(params[:shop_id])
      render "shops/show"
    end
  end

  private
  def review_params
    params.require(:review).permit(:shop_id, :score, :title, :content)
  end
end
