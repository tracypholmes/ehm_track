Rails.application.routes.draw do

  resources :medications
  devise_for :views
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
    
  root 'issues#index'
  resources :issues
end
