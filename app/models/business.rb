class Business < ApplicationRecord
  max_paginates_per 10
  belongs_to :category
  belongs_to :city
  geocoded_by :business_address   # can also be an IP address
  after_validation :geocode, if: ->(business) { business.address.present? and business.address_changed? }          # auto-fetch coordinates

end



#def display_distance_to(current_position)
#  distance_to(current_position, :km).round(3)
#end
