require 'sidekiq/web'

Rails.application.routes.draw do
  resources :users

  namespace :api do
    get 'health_check', to: "health_checks#show"
  end

  mount Sidekiq::Web => '/sidekiq'
  root to: 'users#index'
end
