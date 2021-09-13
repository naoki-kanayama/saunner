class Post < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  validates :prefecture_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :image, presence: true

  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
end
