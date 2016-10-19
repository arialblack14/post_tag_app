Rails.application.routes.draw do
  root to: 'posts#index'
  get 'tags/:tag', to: 'posts#index', as: :tag

  resources :posts
end
