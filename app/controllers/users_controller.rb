class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def show 
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to BurgerBuddy!"
      redirect_to @user
    else
      flash[:error] = "Failed to create account.  Try again."
      render 'new'
    end
  end
end


private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :twitter, :password, :password_confirmation)
    end
