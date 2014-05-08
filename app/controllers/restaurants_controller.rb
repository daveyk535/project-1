class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show 
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
  end

  def search
    parameters = { term: params[:term] }
    #binding.pry
    # render json: Yelp.client.search('San Francisco', parameters)
  end
end

private
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :city, :state, :zip, :website, :phone)
    end
