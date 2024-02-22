Rails.application.routes.draw do
  get 'rings/index'
  get 'rings/show'
  get 'rings/new'
  get 'rings/create'
  get 'rings/edit'
  get 'rings/update'
  get 'rings/destroy'
  get 'cufflinks/index'
  get 'cufflinks/show'
  get 'cufflinks/new'
  get 'cufflinks/create'
  get 'cufflinks/edit'
  get 'cufflinks/update'
  get 'cufflinks/destroy'
  get 'brooches/index'
  get 'brooches/show'
  get 'brooches/new'
  get 'brooches/create'
  get 'brooches/edit'
  get 'brooches/update'
  get 'brooches/destroy'
  get 'bracelets/index'
  get 'bracelets/show'
  get 'bracelets/new'
  get 'bracelets/create'
  get 'bracelets/edit'
  get 'bracelets/update'
  get 'bracelets/destroy'
  get 'earrings/index'
  get 'earrings/show'
  get 'earrings/new'
  get 'earrings/create'
  get 'earrings/edit'
  get 'earrings/update'
  get 'earrings/destroy'
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
