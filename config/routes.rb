Rails.application.routes.draw do

  resources :events, only: [:index, :show]

  resources :registered_applications

  devise_for :users
  resources :users, only: [:show]

  get "welcome/index"

  get "welcome/about"
  
  root to: 'welcome#index'

  namespace :api, defaults: { format: :json } do
    match '/events', to: 'events#index', via: [:options]
    resources :events, only: [:create]
end