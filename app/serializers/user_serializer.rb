class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :default_location
  has_many :user_restaurants

end
