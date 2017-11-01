Rails.application.routes.draw do

  devise_for :views
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  
  
  root 'issues#index'
  resources :issues
  resources :medications, only: [:index]
end
