class LandingController < ApplicationController
  def index
    @main_label = Post.where(is_main:true).last
    @posts = Post.classic.where(category_id: 10).order('created_at DESC')
    @ideas = Post.classic.where(category_id: 11).order('created_at DESC')
    @tags = Post.pluck(:tags).join(', ').split(', ')

    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @news }
    end
  end
end
