class Category < ApplicationRecord
  has_many :businesses
  belongs_to :cities
end
