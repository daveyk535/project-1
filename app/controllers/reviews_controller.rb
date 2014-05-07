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
    @review = Review.create
  end

end
