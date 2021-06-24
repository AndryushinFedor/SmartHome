require 'elasticsearch/model'

class Post < ApplicationRecord
		include Elasticsearch::Model
		include Elasticsearch::Model::Callbacks
		searchkick

		mount_uploader :image, ImageUploader
		validates :tags, :presence => true
		validates :title, :presence => true,
											:length => { :minimum => 5 }

		has_many :comments, as: :commentable, dependent: :destroy
		has_many :likes, as: :likeable, dependent: :destroy
		has_many :favorites, dependent: :destroy
	  has_many :device_posts
	  has_many :devices, through: :device_posts

		belongs_to :user
		belongs_to :category

		scope :classic, -> { where.not(is_main: true) }

		acts_as_votable
	end
