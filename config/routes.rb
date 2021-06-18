Rails.application.routes.draw do
  get 'landing/index'
  get 'lending/index'
  resources :follows
  resources :categories
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  resources :users
  post 'users/:id/follow', to: "users#follow", as: "follow_user"
  post 'users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"
  # get 'about/index'
  # get 'promo/index'
  resources :devices
  resources :posts do
    resources :favorites
  end
  resources :likes
  resources :comments
  get 'posts/index'

  # root 'posts#index'
  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'
  resources :subscribers, only: [:create, :index]
  get "search", to: "search#search"

  root 'landing#index'

  get 'users', to: 'users#index'
  get 'users/:id' => 'users#show'
  delete 'users/:id', to: 'users#destroy'
  get 'users/:id/following', :to => "users#following", :as => :following

end
