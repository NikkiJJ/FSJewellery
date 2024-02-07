Rails.application.routes.draw do
  devise_for :users

  resources :orders
  resources :users
  resources :jewellery_items

  root to: "pages#home"
end
