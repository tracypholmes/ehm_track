Rails.application.routes.draw do
  resources :issues
  resources :medications
  resources :registrations, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  # root path
  root to: 'application#index'
end