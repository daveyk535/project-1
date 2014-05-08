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
    @restaurant = Restaurant.create(restaurant_params)
  end

  def search
    parameters = { term: params[:term], limit: 5 }
    @response = Yelp.client.search('San Francisco', parameters)
    @restaurant = Restaurant.new
  end

end

private
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :city, :state, :zip, :website, :phone)
    end
