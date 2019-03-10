class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :yelp_id, presence: true

  has_many :user_restaurants
  has_many :users, through: :user_restaurants

end
