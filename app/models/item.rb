class Item < ApplicationRecord

  # belongs_to :user
  belongs_to :seller, class_name: 'User', foreign_key: 'seller_id'
  belongs_to :buyer, class_name: 'User', foreign_key: 'buyer_id', optional: true

  belongs_to :category
  belongs_to :brand, optional: true
  has_many :messages, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  # item_imagesモデルの属性付
  has_many :item_images, inverse_of: :item
  accepts_nested_attributes_for :item_images


  validates :name, presence: true, length: { maximum: 40 }
  validates :text, presence: true, length: { maximum: 1000 }
  validates :condition, :shipping_method, :shipping_days, :prefecture_id, :shipping_price, :price, :seller_id, :category_id, :sale_status, presence: true


end



