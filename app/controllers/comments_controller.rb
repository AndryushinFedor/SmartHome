class CommentsController < ApplicationController
	http_basic_authenticate_with :name => "admin", :password => "password", :only => :destroy

	def create
		@comment = Comment.create(comment_params)
		redirect_to final_commentable(@comment)
	end

	def destroy
		@comment = Comment.find_by(id: params[:id])
		@comment.destroy
		redirect_to final_commentable(@comment)
	end

	private

	def comment_params
		params.require(:comment)
					.permit(:body, :commentable_id, :commentable_type)
					.merge(user_id: current_user.id)
	end

	def final_commentable(comment)
		if comment.commentable_type == 'Comment'
			final_commentable(comment.commentable)
		else
			comment.commentable
		end
	end
end
