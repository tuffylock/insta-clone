class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password, length: { minimum: 5 }
  validates :password, confirmation: true
  validates :username, uniqueness: true

  has_many :photos
end
