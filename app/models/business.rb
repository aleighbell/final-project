class Business < ApplicationRecord
  belongs_to :categories
  belongs_to :cities
  belongs_to :users
  has_many   :favourites
end

def geolocation
  geocoded_by :address
  after_validation :geocode
end   
