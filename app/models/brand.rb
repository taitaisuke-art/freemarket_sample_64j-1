class Brand < ApplicationRecord
has_many :items
has_many :genres, through: :brands_genres
has_many :brands_genres
end
