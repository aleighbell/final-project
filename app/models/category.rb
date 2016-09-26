class Category < ApplicationRecord
  has_many :businesses
  has_many :cities
end
