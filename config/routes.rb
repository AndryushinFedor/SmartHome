Rails.application.routes.draw do
  resources :categories
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  # get 'about/index'
  # get 'promo/index'
  resources :posts do
    resources :comments
    resources :likes
    resources :favorites
  end
  get 'posts/index'

  # root 'posts#index'
  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'
  resources :subscribers, only: [:create, :index]

  root 'promo#index'

  get 'users', to: 'users#index'
  get 'users/:id' => 'users#show', :as => :user
  delete 'users/:id', to: 'users#destroy'

end
