class BeerSpot < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :beers
  has_many :comments

  geocoded_by :address  
  after_validation :geocode
  
end
