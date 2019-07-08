class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :beers, :beer_spots do |t|
       t.index [:beer_id, :beer_spot_id]
       t.index [:beer_spot_id, :beer_id]
    end
  end
end
