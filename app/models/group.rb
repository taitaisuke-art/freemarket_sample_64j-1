class Group < ApplicationRecord
  has_many :brands,through: :brands_groups
  has_many :brands_groups
end
