class RestaurantSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :yelp_id
end
