class Api::BumblefooksController < ApplicationController

  def index
    @bumblefooks = Bumblefook.all
    render json: @bumblefooks
  end

  def create
      @bumblefook = Bumblefook.create(bumblefook_params)
      render json: @bumblefook
    end






  private

  def bumblefook_params
  params.permit(:name, :description, :location, :image_url)
  end

end
