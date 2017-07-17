class UsersController < ApplicationController
  def index
    @users = User.all
    @products = Product.all
  end

  def show
    render :show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You've successfully signed up!"
      session[:user_id] = @user.id
      redirect_to "/"
    else
      flash[:alert] = "There was a problem signing up."
      redirect_to '/signup'
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      flash[:update_success] = "Success!"
      redirect_to "/"
    else
      flash[:update_error] = "User update did not work."
      redirect_to "/"
    end
  end

  def destroy
    @users = User.all
    render :index
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :avatar)
  end
end
