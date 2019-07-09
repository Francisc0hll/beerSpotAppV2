class AddGeoPositionToBeerSpot < ActiveRecord::Migration[5.2]
  def change
    add_column :beer_spots, :latitude, :float
    add_column :beer_spots, :longitude, :float
  end
end
