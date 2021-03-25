require 'elasticsearch/model'
class Post < ApplicationRecord

		include Elasticsearch::Model
		include Elasticsearch::Model::Callbacks
		searchkick

		mount_uploader :image, ImageUploader
		validates :name, :presence => true
		validates :title, :presence => true,
											:length => { :minimum => 5 }

		has_many :comments, :dependent => :destroy
		has_many :likes, dependent: :destroy
		has_many :favorites, dependent: :destroy

		belongs_to :user
		belongs_to :category
end
