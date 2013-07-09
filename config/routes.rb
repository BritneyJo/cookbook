Cookbook::Application.routes.draw do

  get '/login', to: 'sessions#new'
  resources :sessions, only: [:create, :destroy]

  resources :users
  resources :categories
  resources :recipes
  resources :ingredients

   get '/search', to: 'home#search'

   root to: 'home#home'

end
