class VotesController < ApplicationController
  before_action :set_resource

  def up
    if current_user.voted_up_on?(@resource)
      @resource.unliked_by(current_user)
    else
      @resource.undisliked_by(current_user)
      @resource.liked_by(current_user)
    end
    redirect_to final_resource(@resource)
  end

  def down
    if current_user.voted_down_on?(@resource)
      @resource.undisliked_by(current_user)
    else
      @resource.unliked_by(current_user)
      @resource.disliked_by(current_user)
    end
    redirect_to final_resource(@resource)
  end

  private

  def set_resource
    @resource = params[:votable_type].constantize.find(params[:votable_id])
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