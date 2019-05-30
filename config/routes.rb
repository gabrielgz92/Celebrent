Rails.application.routes.draw do
  get 'celebrities/index'
  devise_for :users
  root to: 'celebrities#landing'

 resources :celebrities, only: [:index, :show] do
    resources :bookings, only: [:create]
    resources :wishlists, only: [:create, :destroy]
  end

  resources :bookings, only: [:index, :edit, :update]
  resources :users, only: :update
  resources :wishlists, only: :destroy

  get '/landing', to: 'celebrities#landing'

  get '/my-profile', to: 'users#show'
  get 'edit-profile/:id/form', to: 'users#edit', as: 'edit_profile'
end
