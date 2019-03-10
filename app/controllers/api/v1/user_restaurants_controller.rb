class Api::V1::UserRestaurantsController < ApplicationController

  def index
    @user_restaurants = UserRestaurant.all
    render json: @user_restaurants
  end
  
end
