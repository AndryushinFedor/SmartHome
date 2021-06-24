class LikesController < ApplicationController
   before_action :set_resource, only: [:create]
   before_action :find_like, only: [:destroy]
  # def create
  #   @post.likes.create(user_id: current_user.id)
  #   redirect_to post_path(@post)
  # end
  def create
    if already_liked?
      flash[:notice] = "You can't like more than once"
    else
      @resource.likes.create(user_id: current_user.id)
    end
    redirect_to final_resource(@resource)
  end

  def destroy
    resource = @like.likeable
    if @like.user != current_user
      flash[:notice] = "Cannot unlike"
    else
      @like.destroy
    end
    redirect_to final_resource(resource)
  end

  private

  def find_like
     @like = Like.find(params[:id])
  end

   def set_resource
     @resource = params[:likeable_type].constantize.find(params[:likeable_id])
   end

  def already_liked?
    Like.where(user_id: current_user.id, likeable_id: params[:likeable_id], likeable_type: params[:likeable_type]).exists?
  end

  def find_post
    @post = Post.find(params[:post_id])
  end

   def final_resource(resource)
     if resource.class.name == 'Comment'
       if resource.commentable_type == 'Comment'
         final_resource(resource.commentable)
       else
         resource.commentable
       end
     else
       resource
     end
   end
end
