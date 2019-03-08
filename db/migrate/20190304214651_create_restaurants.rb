class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :yelp_id
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :image_url

      t.timestamps
    end
  end
end
