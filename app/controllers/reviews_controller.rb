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
    #Tally up the score prior to saving the review
    @review.total = params["review"]["patty"].to_i + params["review"]["bun"].to_i + params["review"]["bun_patty_ratio"].to_i + params["review"]["toppings"].to_i + params["review"]["wow_factor"].to_i
    #Increment num_reviews for the burger before save
    @burger = Burger.find(params[:review][:burger_id])
    # binding.pry
    @burger.num_reviews += 1
    @burger.save
    @review.save
    redirect_to review_path(@review)
  end

end

private
    def review_params
      params.require(:review).permit(:patty, :bun, :bun_patty_ratio, :toppings, :wow_factor, :total, :comments, :burger_id)
    end
