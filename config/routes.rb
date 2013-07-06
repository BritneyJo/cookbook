Cookbook::Application.routes.draw do
   resources :categories
   resources :recipes

   get '/about_us/', to: 'home#about_us'

   get '/faq', to: 'home#faq'

   root to: 'home#home'

end
