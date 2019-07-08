class CreateBeerSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :beer_spots do |t|
      t.string :name
      t.string :qualification
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
