class AddBeerSpotToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :beerSpot, foreign_key: true
  end
end
