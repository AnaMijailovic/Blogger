Rails.application.routes.draw do
  resources :authors
  resources :articles

  root to: 'articles#index'

  resources :articles do
    resources :comments
  end

  resources :tags
  resources :authors

  resources :author_sessions, only: [ :new, :create, :destroy ]

  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
  
end
