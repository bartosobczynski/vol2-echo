Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :leagues
  resources :users
  resources :matches

  post 'league/:id/join', to: 'leagues#join', as: 'join_league'

  root 'leagues#index'
end