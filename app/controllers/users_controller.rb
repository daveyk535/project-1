class UsersController < ApplicationController
  
  def show 
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to BurgerBuddy!"
      redirect_to @user
    else
      flash[:error] = "Failed to create account.  Try again."
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to @user
  end

end


private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :twitter, :password, :password_confirmation)
    end
