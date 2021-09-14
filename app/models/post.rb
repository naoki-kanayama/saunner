class Post < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  validates :prefecture_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :images, presence: true

  belongs_to :user
  has_many :comments
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user
  has_many_attached :images
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
end
