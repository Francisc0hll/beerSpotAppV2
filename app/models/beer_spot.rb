class BeerSpot < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :beers

  geocoded_by :address  
  after_validation :geocode
end
