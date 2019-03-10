class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password_digest, presence: true

  has_many :user_restaurants
  has_many :restaurants, through: :user_restaurants
end
