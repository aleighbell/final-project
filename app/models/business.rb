class Business < ApplicationRecord
  belongs_to :categories
  belongs_to :cities
  belongs_to :users
  has_many   :favourites
end
