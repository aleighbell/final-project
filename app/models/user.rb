class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :businesses
  has_many :favourites 

  validates :password, length: { minimum: 8 }
  validates :password, confirmation: true
  validates :email, uniqueness: true, email_format: { message: 'Not a valid email.' }

end
