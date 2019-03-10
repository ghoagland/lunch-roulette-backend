class User < ApplicationRecord
  validates :email, presence: true
  validates :name, presence: true
  validates :password_digest, presence: true

  has_many :user_restaurants
  has_many :restaurants, through: :user_restaurants
end
