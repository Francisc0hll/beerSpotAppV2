class AddBeerSpotToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :beer_spot, foreign_key: true
  end
end
