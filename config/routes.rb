Rails.application.routes.draw do
  resources :users

  mount Sidekiq::Web => '/sidekiq'
  root to: 'users#index'
end
