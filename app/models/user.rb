class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password_digest, presence: true

  has_many :user_restaurants
  has_many :restaurants, through: :user_restaurants


  def user_restaurants_by_num_visits
    # TODO: Rewrite for efficiency
    # SELECT  "user_restaurants".*, "restaurant"."name", "restaurant"."yelp_id" FROM "restaurants" INNER JOIN "user_restaurants"
    # ON "restaurants"."id" = "user_restaurants"."restaurant_id"
    # WHERE "user_restaurants"."user_id" = $1
    # ORDER BY "user_restaurants"."num_visits" DESC
    self.user_restaurants.order(num_visits: :desc)
  end

  def user_restaurants_by_last_visit
    self.user_restaurants.order(last_visit: :asc)
  end
end
