Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  
  resources :issues
  root 'issues#index'
  resources :medications
  # resources :registrations, only: [:new, :create]
  # resources :sessions, only: [:new, :create, :destroy]
  # root path
end
