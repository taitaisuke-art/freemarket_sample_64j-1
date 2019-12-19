class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable,omniauth_providers: %i[facebook google_oauth2]


  # has_many :items, dependent: :destroy
  has_many :buyer_items, class_name: 'Item', foreign_key: 'buyer_id', dependent: :destroy
  has_many :seller_items, class_name: 'Item', foreign_key: 'seller_id', dependent: :destroy
  
  # has_many :messages, dependent: :destroy
  has_many :buyer_messages, class_name: 'Message', foreign_key: 'buyer_id', dependent: :destroy
  has_many :seller_messages, class_name: 'Message', foreign_key: 'seller_id', dependent: :destroy

  has_one :address, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :nickname, :first_name, :last_name, :first_name_kana, :last_name_kana, :birthyear, :birthmonth, :birthday, :telephone, presence: true


  mount_uploader :icon, ImageUploader

  def self.from_omniauth(auth)
    # uidとproviderでユーザーを検索
    user = User.find_by(uid: auth.uid, provider: auth.provider)
    if user
      #SNSを使って登録したユーザーがいたらそのユーザーを返す
      return user
    else
      #いなかった場合はnewします。
      new_user = User.new(
        email: auth.info.email,
        nickname: auth.info.name,
        uid: auth.uid,
        provider: auth.provider,
        #パスワードにnull制約があるためFakerで適当に作ったものを突っ込んでいます
        password: Faker::Internet.password(min_length: 8,max_length: 128)
      )
      return new_user
    end
  end
end



