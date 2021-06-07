class Device < ApplicationRecord
  validates :title, :about, :tags, :price, presence: true
  validates_uniqueness_of :title

  mount_uploader :image, ImageUploader
end
