class Favourite < ApplicationRecord
  belongs_to :user
  has_many :businesses
end
