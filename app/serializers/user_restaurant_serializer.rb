class UserRestaurantSerializer
  include FastJsonapi::ObjectSerializer
  attributes :num_visits, :last_visit, :is_favorite, :restaurant_name, :restaurant_yelp_id

  belongs_to :user
  belongs_to :restaurant
end
