Rails.application.routes.draw do
  root to: 'blogs#index'
  get 'sessions/new'

  resources :blogs, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:show,:new, :create, :edit, :update, :destroy]
end
