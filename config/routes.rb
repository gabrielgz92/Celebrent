Rails.application.routes.draw do
  get 'celebrties/index'
  get 'celebrties/show'
  devise_for :users
  root to: 'celebrities#index'

 resources :celebrities, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index, :edit, :update]

  get '/my-profile', to: 'users#show'
  get 'edit-profile/:id/form', to: 'users#edit'
  patch 'edit-profile/:id', to: 'users#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
