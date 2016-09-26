class Business < ApplicationRecord
  belongs to :categories
  belongs to :cities
  has_and_belongs_to_many :users
  has_many :favourites
end
