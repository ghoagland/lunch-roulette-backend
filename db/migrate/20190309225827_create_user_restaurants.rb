class CreateUserRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :user_restaurants do |t|
      t.integer :num_visits, default: 0
      t.datetime :last_visit
      t.boolean :is_favorite, default: false
      t.boolean :is_hidden, default: false
      t.references :user, foreign_key: true
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
