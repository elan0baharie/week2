class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show

    render :show
  end

  def destroy
    @users = User.all
    
    render :index
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
