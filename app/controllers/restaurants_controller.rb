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
    @restaurant = Restaurant.new
    @restaurant.update(name: params[:name], city: params[:restaurant][:city]) 
    redirect_to @restaurant
  end

  def search
    parameters = { term: params[:term], limit: 5 }
    @response = Yelp.client.search('San Francisco', parameters)
    @restaurant = Restaurant.new
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name)#, :address, :city, :state, :zip, :website, :phone)
    end

end

