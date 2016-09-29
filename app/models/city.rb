class City < ApplicationRecord
  has_many :categories
  has_many :businesses
end
