class LandingController < ApplicationController
  def index
    @main_label = Post.where(is_main:true).last
    # 1. Создать категории
    # 2. Взять АЙДИ (ID) у созданной категории
    # 3. Переписать строчки 6-7 на вид Post.classic.where(category_id: АЙДИ_КАТЕГОРИИ).order('created_at DESC')
    # В соответствующих переменных будут посты указанных категорий
    
    @posts = posts_presenter(Post.order('created_at DESC'))
    @ideas = posts_presenter(Post.order('created_at DESC'))
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
        title: device.title,
        tags: device.tags,
        image: device.image,
        price: device.price,
        votes: device.weighted_score
      }
    end
  end
end
