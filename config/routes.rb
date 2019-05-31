Rails.application.routes.draw do
  get 'search/show'
  get 'celebrities/index'
  devise_for :users
  root to: 'celebrities#landing'

 resources :celebrities, only: [:index, :show] do
    resources :bookings, only: [:create]
    resources :wishlists, only: [:create, :destroy]
    resources :celebrity_tags, only: [:new, :create]
  end

  resources :bookings, only: [:index, :edit, :update, :destroy]
  resources :users, only: :update
  resources :wishlists, only: [:index]

  delete '/wishlist/:id', to:'wishlists#destroy_wishlists', as: 'wishlist'

  get '/landing', to: 'celebrities#landing'

  get '/my-profile', to: 'users#show'
  get 'edit-profile/:id/form', to: 'users#edit', as: 'edit_profile'
end
