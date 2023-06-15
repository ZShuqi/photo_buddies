Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # resources :pages, only: [:show]
  get '/search', to: 'pages#search', as: 'search'
  get '/profile', to: 'pages#profile', as: 'profile'

  resources :pages do
    get '/pages/:id', to: 'pages#show'
  end

  resources :events, only: [:index, :show] do
    resources :bookings, only: [:index, :create, :update]
    resources :community
  end

  resources :galleries do
    resources :photos, only: [:show]
  end
end
