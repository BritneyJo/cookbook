Cookbook::Application.routes.draw do
   resources :categories
   resources :recipes
   resources :ingredients

   get '/search', to: 'home#search'

   root to: 'home#home'

end
