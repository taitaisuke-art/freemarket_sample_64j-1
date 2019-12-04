class Brand < ApplicationRecord
has_many :items
has_many :groups,through: :brands_groups
has_many :brands_groups
end
