class Api::V1::UserRestaurantsController < ApplicationController

  def index
    @user_restaurants = UserRestaurant.all
    render json: @user_restaurants
  end

  def create
    @restaurant = Restaurant.find_or_create_by(yelp_id: restaurant_params[:id])
    @restaurant.name = restaurant_params[:name]
    if @restaurant.save
      @user_restaurant = UserRestaurant.find_or_create_by(user: current_user, restaurant: @restaurant)
      @user_restaurant.num_visits += 1
      @user_restaurant.last_visit = DateTime.now
      if @user_restaurant.save
        render json: @user_restaurant
      end
    end
  end

  private

  def restaurant_params
    params.require(:restaurant)
  end

end
