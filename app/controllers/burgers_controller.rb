class BurgersController < ApplicationController
  
  def index
    @burgers = Burger.all
    @sorted = Burger.all.order('average_score DESC')
  end

  def new
  end

  def show 
    @burger = Burger.find(params[:id])
  end

end

