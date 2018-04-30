Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
   root :to => 'products#index'


  resources :order_items
  resources :orders

  resources :products
  resource :cart, only: [:show]
end
