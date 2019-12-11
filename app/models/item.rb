class Item < ApplicationRecord
#belongs_to :user
#belongs_to :category
has_many :item_images, dependent: :destroy
has_many :messages, dependent: :destroy
#belongs_to :brand
has_many :likes, dependent: :destroy
has_many :comments, dependent: :destroy



end
