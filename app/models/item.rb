class Item < ApplicationRecord

  # belongs_to :user
  belongs_to :seller, class_name: 'User', foreign_key: 'seller_id'
  belongs_to :buyer, class_name: 'User', foreign_key: 'buyer_id', optional: true

  belongs_to :category
  has_many :messages, dependent: :destroy
  belongs_to :brand, optional: true
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  # item_imagesモデルの属性付
  has_many :item_images, inverse_of: :item
  accepts_nested_attributes_for :item_images

end



