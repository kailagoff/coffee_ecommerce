Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
   root :to => 'products#index'

  resources :order_items do
    resources :orders
  end

  resources :products do
  end

  resources :lists do
    resources :tasks
  end

  resources :charges

  resource :cart, only: [:show]
  resource :book, only: [:show]
  resources :news, only: [:index]
end
