# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Restaurant.destroy_all
UserRestaurant.destroy_all

# FIXME: Update seeded users with auth
user1 = User.create(
  name: 'Gigi',
  email: 'gigi@gigi.gigi',
  default_location: '81 Prospect St, Brooklyn NY',
  password_digest: 'test123'
)


user2 = User.create(
  name: 'Brandon',
  email: 'brandon@test.com',
  default_location: '420 W 21st St, New York, NY',
  password_digest: 'test123'
)


restaurant1 = Restaurant.create(
  name: 'The Meatball Shop',
  yelp_id: 'fakeymcfakerson',
)

restaurant2 = Restaurant.create(
  name: 'The Park',
  yelp_id: 'soveryfake',
)


user_restaurants1 = UserRestaurant.create(user: user1, restaurant: restaurant2)
user_restaurants2 = UserRestaurant.create(user: user2, restaurant: restaurant1)
