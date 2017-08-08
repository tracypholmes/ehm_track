Rails.application.routes.draw do
  resources :issues
  resources :medications
  # root path
  root to: 'application#index'
  
  resources :issue
  resources :registrations, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
end
