class RemoveQualificationFromBeerSpot < ActiveRecord::Migration[5.2]
  def change
    remove_column :beer_spots, :qualification, :string
  end
end
