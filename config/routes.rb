Rails.application.routes.draw do
  get 'search/show'
  get 'celebrities/index'
  devise_for :users
  root to: 'celebrities#landing'

 resources :celebrities, only: [:index, :show] do
    resources :bookings, only: [:create]
    resources :celebrity_tags, only: [:new, :create]
  end

  resources :bookings, only: [:index, :edit, :update, :destroy]

  resources :users, only: :update

  get '/landing', to: 'celebrities#landing'

  get '/my-profile', to: 'users#show'
  get 'edit-profile/:id/form', to: 'users#edit', as: 'edit_profile'
end
