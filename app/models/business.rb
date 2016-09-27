class Business < ApplicationRecord
  belongs_to :categories
  belongs_to :cities
  has_and_belongs_to_many :users
  has_many :favourites
end
