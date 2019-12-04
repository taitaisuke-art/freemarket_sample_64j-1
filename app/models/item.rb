class Item < ApplicationRecord
belongs_to:user
belongs_to:category
has_many:item_images
has_many:messages
belongs_to:bland
has_many:likes
has_many:comments
end
