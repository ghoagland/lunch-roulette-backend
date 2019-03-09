class CreateUserRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :user_restaurants do |t|
      t.integer :num_visits
      t.datetime :last_visit
      t.boolean :is_favorite
      t.boolean :is_hidden
      t.references :user, foreign_key: true
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
