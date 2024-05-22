class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.create(params_review)
    # restaurant = Restaurant.find(params[:restaurant_id])
    # @review.restaurant = restaurant
    @review.restaurant_id = params[:restaurant_id]
    @review.save!
    redirect_to restaurant_path(params[:restaurant_id])
  end

  private

  def params_review
    params.require(:review).permit(:content, :rating)
  end
end
