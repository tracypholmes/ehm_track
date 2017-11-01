Rails.application.routes.draw do

  devise_for :views
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  
  resources :users do
    member do
      resources :medications, only: [:index]
    end
  end
  
  root 'issues#index'
  resources :issues
end
