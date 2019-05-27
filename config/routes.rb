Rails.application.routes.draw do
  devise_for :users
  root to: 'celebrities#index'

 resources :celebrities, only: [:index, :show] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index, :edit, :update]

  get '/my-profile', to: 'user#profile'
  get 'edit-profile/:id/form', to: 'user#edit'
  patch 'edit-profile/:id', to: 'user#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
