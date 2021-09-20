class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence:true, length: { maximum: 10 }
  
  has_many :posts
  has_many :comments
  has_many :likes, dependent: :destroy
  has_many :like_posts, through: :likes, source: :post
  has_many :user_rooms, dependent: :destroy
  has_many :chats, dependent: :destroy
  mount_uploader :image, ImageUploader
end
