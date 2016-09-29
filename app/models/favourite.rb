class Favourite < ApplicationRecord
  belongs_to :user
  has_many :businesses
  has_many :cities
end
