class Business < ApplicationRecord
  belongs_to :category
  belongs_to :city
  belongs_to :user
  has_many   :favourites
end
