class Device < ApplicationRecord
  validates :title, :about, :tags, :price, presence: true
  validates_uniqueness_of :title

  mount_uploader :image, ImageUploader

  belongs_to :user, optional: true
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  has_many :device_posts
  has_many :posts, through: :device_posts

  acts_as_votable
end
