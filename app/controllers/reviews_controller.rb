class ReviewsController < ApplicationController
  def new
    set_restaurant
    @review = Review.new
  end

  def create
    set_restaurant
    @review = Review.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
