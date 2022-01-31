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

  def edit
    @review = Review.find(params[:id])
  end

  def destroy    
    @shop = Shop.find(params[:shop_id])
    review = @shop.reviews.find(params[:id])
    if current_user.id == review.user.id
      review.destroy
      redirect_back(fallback_location: root_path, notice: "口コミを削除しました")
    else
      render "shops/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :shop_id, :score, :title, :content)
  end
end
