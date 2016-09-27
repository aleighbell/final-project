class Favourite < ApplicationRecord
  belongs_to :users
  has_many :businesses
  has_many :cities
end
