class Beer < ApplicationRecord
    has_and_belongs_to_many :beer_spots
end
