class Api::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def createFavorite
    @favorite = Favorite.find_or_create_by(favorite_params)
    render json: @favorite
  end

  def createUser
    @user = User.find_or_create_by(user_params)
    render json: @user
  end

  private

  def favorite_params
  params.permit(:bumblefook_id, :user_id)
  end

  def user_params
  params.permit(:name, :bio)
  end


end
