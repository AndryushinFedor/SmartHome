Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  # get 'about/index'
  # get 'promo/index'
  resources :posts do
    resources :comments
  end
  get 'posts/index'

  # root 'posts#index'
  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'
  resources :subscribers, only: [:create, :index]

  root 'promo#index'
end
