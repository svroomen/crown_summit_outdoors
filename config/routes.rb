Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
  resources :home, only: :index

  resources :customers, except: %i[index destroy]

  resources :products, only: %i[index show]

  resources :orders, only: :show
  get '/order_invoice', to: 'orders#invoice'
  get '/submit_order', to: 'orders#submit_order'

  # log in routes
  get    '/sign_in',   to: 'sessions#new'
  post   '/sign_in',   to: 'sessions#create'
  delete '/sign_out',  to: 'sessions#destroy'

  # contact and about us routes
  get '/contact_us', to: 'site_info#contact_us'
  get '/about_us', to: 'site_info#about_us'

  # shopping cart
  get '/shopping_cart', to: 'shopping_carts#index'
  post '/shopping_cart', to: 'shopping_carts#create'
  delete '/shopping_cart', to: 'shopping_carts#destroy'
  get '/increase_items_count_shopping_cart', to: 'shopping_carts#increase_items_count'
  get '/decrease_items_count_shopping_cart', to: 'shopping_carts#decrease_items_count'
end
