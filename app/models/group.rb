class Group < ApplicationRecord
  has_many: brands,through: :brands_group
  has_many: brands_group
end
