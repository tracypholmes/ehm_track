Rails.application.routes.draw do
  # root path
  root to: 'application#index'
  
  resources :health
  resources :registrations, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
end
