class Post < ApplicationRecord
  FILE_NUMBER_LIMIT = 3

  validates :title, presence: true
  validates :text, presence: true
  validates :prefecture_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :images, presence: true
  validate :validate_number_of_files

  paginates_per 4

  belongs_to :user
  has_many :comments
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user
  has_many_attached :images
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  def validate_number_of_files
    return if images.length <= FILE_NUMBER_LIMIT
    errors.add(:images, "に添付できる画像は#{FILE_NUMBER_LIMIT}件までです。")
  end
  
end
