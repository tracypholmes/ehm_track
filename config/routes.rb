Rails.application.routes.draw do
  root to: 'application#index'
  resources :issues
  resources :medications
  resources :registrations, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  # root path
end