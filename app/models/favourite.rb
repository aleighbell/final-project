class Favourite < ApplicationRecord
  belongs_to :users
  has_many :businesses
end
