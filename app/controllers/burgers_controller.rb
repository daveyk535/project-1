class BurgersController < ApplicationController
  
  def index
    @burgers = Burger.all
  end

  def new
  end

end
