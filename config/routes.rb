Rails.application.routes.draw do
  # get 'communities/show'
  devise_for :users
  root to: "pages#home"
  resources :users, only: [:show, :edit, :update]
  resources :pages, only: [:show]
  get '/search', to: 'pages#search', as: 'search'
  get '/profile', to: 'pages#profile', as: 'profile'

  patch 'update_profile', to: 'pages#updateprofile', as: 'update_profile'
  get '/community', to: 'pages#community', as: 'community'

  resources :events, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:index, :create, :update]
  end

  resources :galleries do
    resources :photos, only: [:show, :destroy] do
      resources :likes, only: [:create]
    end
  end
  resources :communities, only: [:show]

  resources :users, only: [:show] do
      resources :galleries, only: [:new, :create]

  end
  # resources :communities, only: [:show]
end
