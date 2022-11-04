Rails.application.routes.draw do
  root 'sessions#new'
  resources :users, only: [:show,:new, :create, :edit, :update, :destroy]
end
