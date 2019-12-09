class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :address, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy


  validates :nickname, :first_name, :last_name, :first_name_kana, :last_name_kana, :birthyear, :birthmonth, :birthday, :telephone, presence: true
  # mount_uploader :image, ImageUploader
end


