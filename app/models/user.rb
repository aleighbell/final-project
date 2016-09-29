class User < ApplicationRecord
  has_many :businesses
  has_many :favourites 
end
