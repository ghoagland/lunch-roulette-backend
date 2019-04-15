class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :default_location
  has_many :user_restaurants, object_method_name: :user_restaurants_by_num_visits
  has_many :restaurants

end
