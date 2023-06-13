Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # resources :pages, only: [:show]

  resources :pages do
    get '/search', to: 'pages#search', as: 'search'
    get '/pages/:id', to: 'pages#show'
  end
end
