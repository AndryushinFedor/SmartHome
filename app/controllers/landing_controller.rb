class LandingController < ApplicationController
  def index
    @posts = Post.all
    @news = [{title: 'title', content: 'content', image: 'path-to-image'},
             {title: 'title2', content: 'content2', image: 'path-to-image'},
             {title: 'title3', content: 'content3', image: 'path-to-image'}]

    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @news }
    end
  end
end
