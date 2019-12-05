class Group < ApplicationRecord
  has_many :brands,through: :brands_genres
  has_many :brands_genres
end
