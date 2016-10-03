class Business < ApplicationRecord
  max_paginates_per 10
  belongs_to :category
  belongs_to :city
end

#  geocoded_by :address
#  after_validation :geocode

def display_distance_to(current_position)
  distance_to(current_position, :km).round(3)
end
