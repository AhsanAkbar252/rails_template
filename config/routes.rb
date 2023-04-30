Rails.application.routes.draw do
  resources :orders
  devise_for :users
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "products#index"
  get '/cart', to: 'carts#show', as: 'cart'
  post '/cart/add_item/:product_id', to: 'carts#add_item', as: 'add_item'
  post '/cart/remove_item/:product_id', to: 'carts#remove_item', as: 'remove_item'
end
