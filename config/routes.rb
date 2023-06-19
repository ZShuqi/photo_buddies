Rails.application.routes.draw do
  # get 'communities/show'
  devise_for :users
  root to: "pages#home"

  resources :pages, only: [:show]
  get '/search', to: 'pages#search', as: 'search'
  get '/profile', to: 'pages#profile', as: 'profile'
  get '/community', to: 'pages#community', as: 'community'


  resources :events, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:index, :create, :update]
  end

  resources :galleries do
    resources :photos, only: [:show, :destroy]
  end
  resources :communities, only: [:show]

  resources :users, only: [] do
    resources :galleries, only: [:new, :create]

  end
  # resources :communities, only: [:show]
end
