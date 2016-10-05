class Business < ApplicationRecord
  max_paginates_per 10
  geocoded_by :business_address
  after_validation :geocode, if: :business_address_changed?
  belongs_to :category
  belongs_to :city

#def display_distance_to(other_business_address)
#  business_address.distance_to(@business_address, :km).round(3)
#end

#if business.geocoded?
#  business.nearbys(5)
