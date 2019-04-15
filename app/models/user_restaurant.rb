class UserRestaurant < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  def restaurant_name
    restaurant.name
  end

  def restaurant_yelp_id
    restaurant.yelp_id
  end
end
