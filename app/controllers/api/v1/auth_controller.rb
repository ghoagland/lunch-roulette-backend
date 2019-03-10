class Api::V1::AuthController < ApplicationController

  def create
    @user = User.first
    render json: UserSerializer.new(@user)
  end

end
