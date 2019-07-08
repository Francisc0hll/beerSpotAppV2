class AddAddressToBeerSpot < ActiveRecord::Migration[5.2]
  def change
    add_column :beer_spots, :address, :string
  end
end
