class UsersController < ApplicationController
  def new
     @user = User.new
  end

  def show
    @user = current_user

  end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to store_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    @user.save
  end

  def destroy
    @user.destroy
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:image, :name, :email)
  end
end
