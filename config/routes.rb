Rails.application.routes.draw do
  get 'sessions/new'
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
end
