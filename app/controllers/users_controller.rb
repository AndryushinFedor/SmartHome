class UsersController < ApplicationController
  def index
    @users = User.all
    render component: 'Users', props: { users: @users }
    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @users }
    end

  end

  def show
    @users = User.all
    @user = User.find(params[:id])
    if @user
      @posts = posts_presenter(@user.favorited_posts)
      @liked_posts_tags = @user.votes.up.map(&:votable).map(&:tags).join(',').split(',').map(&:strip)
      @favorites = @user.favorites.all
      @devices = devices_presenter(@user.devices)
      @actual_posts = posts_presenter(Post.limit(4))
      @user_posts = posts_presenter(@user.posts)
      render actions: :show
    else
        render file: 'public/404', status: 404, formats: [:html]
    end
    if params.has_key?(:category)
      @category = Category.find_by_name(params[:category])
      @posts = Post.where(category: @category)
    else
      @posts = Post.all
    end
  end

  def update_avatar
    @user = User.find(params[:id])
    if @user
      @user.update(user_avatar_params)
      redirect_back(fallback_location: user_path(@user))
    else
      render file: 'public/404', status: 404, formats: [:html]
    end
  end

  def favorited?(post)
    favorites.find_by(post_id: post.id).present?
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, notice: 'User deleted.'
  end

  def follow
    @user = User.find(params[:id])
    current_user.followees << @user
    redirect_back(fallback_location: user_path(@user))
  end

  def unfollow
    @user = User.find(params[:id])
    current_user.followed_users.find_by(followee_id: @user.id).destroy
    redirect_back(fallback_location: user_path(@user))
  end

  def following
    @user = User.find(params[:id])
    if @user
      @follow = @user.followed_users
      render actions: :show
      @following = @user.followees.all
    end
  end

  private

  def user_avatar_params
    params.require(:user).permit(:avatar)
  end

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
