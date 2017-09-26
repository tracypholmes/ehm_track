Rails.application.routes.draw do
  get 'symptoms/new'

  get 'symptoms/edit'

  devise_for :views
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  
  root 'issues#index'
  resources :issues
  resources :medications
  resources :symptoms
  # resources :registrations, only: [:new, :create]
  # resources :sessions, only: [:new, :create, :destroy]
  # root path
end
