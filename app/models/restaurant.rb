class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :yelp_id, presence: true

end
