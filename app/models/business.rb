class Business < ApplicationRecord
  belongs_to :category
  belongs_to :city
end

def geolocation
  geocoded_by :address
  after_validation :geocode
end
