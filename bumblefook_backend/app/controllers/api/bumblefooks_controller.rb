class Api::BumblefooksController < ApplicationController

  def index
    @bumblefooks = Bumblefook.all
    render json: @bumblefooks
  end

end
