Rails.application.routes.draw do
  devise_for :users

  resources :orders
  resources :users
  resources :jewellery_items
  resources :necklaces

  root to: "pages#home"

  get "about",   to: "pages#about",   as: :about
  get "contact", to: "pages#contact", as: :contact
  get "collections", to: "pages#collections", as: :collections
  get "rings", to: "pages#rings", as: :rings
  get "braceletes", to: "pages#braceletes", as: :braceletes
  get "broochescufflinks", to: "pages#broochescufflinks", as: :broochescufflinks

end
