class LandingController < ApplicationController
  def index
    @main_label = Post.where(is_main:true).last
    
    @elementary = posts_presenter(Post.where(category_id: 1).order('created_at DESC'))
    @vacation = posts_presenter(Post.where(category_id: 2).order('created_at DESC'))
    @ecology = posts_presenter(Post.where(category_id: 3).order('created_at DESC'))
    
    @devices = devices_presenter(Device.all)

    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @posts }
    end
  end

  private

  def posts_presenter(posts)
    posts.map do |post|
      {
        id: post.id,
        title: post.title,
        tags: post.tags,
        image: post.image,
        color: post.color,
        created_at: post.created_at,
        votes: post.weighted_score
      }
    end
  end

  def devices_presenter(devices)
    devices.map do |device|
      {
        id: device.id,
        title: device.title,
        tags: device.tags,
        image: device.image,
        price: device.price,
        votes: device.weighted_score
      }
    end
  end
end
