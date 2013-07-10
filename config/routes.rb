Cookbook::Application.routes.draw do

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  resources :sessions, only: [:create, :destroy]

  resources :users
  resources :categories
  resources :recipes
  resources :ingredients

  # get '/search', to: 'search#index'
  match 'search', to: 'search#index', via: [:get, :post], as: :search

  root to: 'home#home'

end
