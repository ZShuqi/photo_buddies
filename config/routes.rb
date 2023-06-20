Rails.application.routes.draw do
  # get 'communities/show'
  devise_for :users
  root to: "pages#home"
  resources :users, only: [:show, :edit, :update]
  resources :pages, only: [:show]
  get '/search', to: 'pages#search', as: 'search'
  get '/profile', to: 'pages#profile', as: 'profile'

  get '/community', to: 'pages#community', as: 'community'

  resources :pages do
    get '/pages/:id', to: 'pages#show'
  end

  resources :events do
    resources :bookings, only: [:create, :update]
  end
  resources :bookings, only: [:index, :destroy]

  resources :galleries do
    resources :photos, only: [:show, :destroy] do
      resources :likes, only: [:create]
    end
  end

  resources :communities, only: [:show]
  resources :hot_spots, only: [:create]

  resources :users do
    resources :galleries
  end

  # resources :communities, only: [:show]
end
