Rails.application.routes.draw do

  resources :events, only: [:index, :show]

  resources :registered_applications

  devise_for :users
  resources :users, only: [:show]

  get "welcome/index"

  get "welcome/about"
  
  root to: 'welcome#index'
end