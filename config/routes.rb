Rails.application.routes.draw do
  root to: 'blogs#index'
  get 'sessions/new'
  resources :blogs
end
