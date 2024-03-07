Rails.application.routes.draw do


  devise_for :users

  resources :orders
  resources :users
  resources :jewellery_items, only: [:create, :new, :index]
  resources :necklaces
  resources :earrings
  # resources :bracelets
  resources :bracelets, only: [:show, :destroy]
  resources :brooches
  resources :cufflinks
  resources :rings

  post 'jewellery_items/:item_type', to: 'jewellery_items#create_and_redirect', as: :create_and_redirect_jewellery_item

  resources :users do
    member do
      get 'admin_dashboard', to: 'users#admin_dashboard', as: :admin_dashboard
    end
  end


  root to: "pages#home"

  get "about",   to: "pages#about",   as: :about
  get "contact", to: "pages#contact", as: :contact
  get "collections", to: "pages#collections", as: :collections
  # get "braceletes", to: "pages#braceletes", as: :braceletes
  # get "broochescufflinks", to: "pages#broochescufflinks", as: :broochescufflinks

end
