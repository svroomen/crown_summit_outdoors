Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
  resources :home, only: :index
  resources :customers, except: %i[index destroy]
  resources :products, only: %i[index show]

  # log in routes
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # cart specific routes
  post '/add_item_to_cart', to: 'sessions#add_item_to_cart'
end
