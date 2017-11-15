Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
  resources :home, only: :index
  resources :customers, except: %i[index destroy]
  resources :products, only: %i[index show]

  # log in routes
  get    '/sign_in',   to: 'sessions#new'
  post   '/sign_in',   to: 'sessions#create'
  delete '/sign_out',  to: 'sessions#destroy'

  # cart specific routes
  post '/add_item_to_cart', to: 'sessions#add_item_to_cart'

  # contact and about us routes
  get '/contact_us', to: 'site_info#contact_us'
  get '/about_us', to: 'site_info#about_us'
end
