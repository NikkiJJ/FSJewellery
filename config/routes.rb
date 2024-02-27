Rails.application.routes.draw do


  devise_for :users

  resources :orders
  resources :users
  resources :jewellery_items
  resources :necklaces
  resources :earrings
  resources :bracelets
  resources :brooches
  resources :cufflinks
  resources :rings

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
