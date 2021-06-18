class Comment < ApplicationRecord
	belongs_to :commentable, polymorphic: true
	belongs_to :user
	has_many :comments, as: :commentable, dependent: :destroy, foreign_key: :commentable_id
	has_many :likes, as: :likeable, dependent: :destroy
end
