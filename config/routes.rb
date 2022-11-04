Rails.application.routes.draw do
  root to: 'blogs#index'
  get 'sessions/new'

  resources :blogs: [:new, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :sessions, only: [:new, :create, :destroy]

end
