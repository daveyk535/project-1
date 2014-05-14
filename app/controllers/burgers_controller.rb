class BurgersController < ApplicationController
  def index
    @burgers = Burger.all.includes(:restaurant)
  end

  def new
  end

  def show
    @burger = Burger.find(params[:id])
  end
end
