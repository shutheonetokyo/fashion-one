class ReviewsController < ApplicationController
  before_action :authenticate_user! ,except: :index
  before_action :set_review, only: %i[ edit update destroy ]

  def index
    @shop = Shop.find(params[:shop_id])
    @reviews = @shop.reviews.order(created_at: :desc)
  end

  def new
    @review = Review.new
    @shop = Shop.find(params[:shop_id])
  end

  def create
    @review = current_user.reviews.new(review_params)
    if @review.save
      redirect_to shop_path(params[:shop_id]), notice: "口コミを投稿しました"
    else
      redirect_back(fallback_location: root_path, alert: "口コミの投稿に失敗しました")
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    if @review.update(review_params)
      redirect_to shop_path(params[:shop_id]), notice: "口コミを編集しました。" 
    else
      redirect_back(fallback_location: root_path, alert: "口コミの編集に失敗しました。")
    end
  end

  def destroy
    @shop = Shop.find(params[:shop_id])
    review = @shop.reviews.find(params[:id])
    review.destroy
    redirect_back(fallback_location: root_path, notice: "口コミを削除しました。")
  end

  private

  def set_review
    @review = Review.find(params[:id])
    @shop = Shop.find(params[:shop_id])
  end

  def review_params
    params.require(:review).permit(:user_id, :shop_id, :score, :title, :content)
  end
end
