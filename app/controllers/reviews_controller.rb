class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @restaurant = Restaurant.new
    @burger = Burger.new
  end

  def show 
    @review = Review.find(params[:id])
  end

  def create 
    @review = Review.new(review_params)
    @review.user = current_user
    @review.save
    redirect_to review_path(@review)
  end

end

private
    def review_params
      params.require(:review).permit(:patty, :bun, :bun_patty_ratio, :toppings, :service, :side, :total, :comments)
    end
