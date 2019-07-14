class AddPostToBeerSpot < ActiveRecord::Migration[5.2]
  def change
    add_column :beer_spots, :post, :text
  end
end
