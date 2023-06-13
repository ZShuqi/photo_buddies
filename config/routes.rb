Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :pages do
    get '/search', to: 'pages#index', as: 'search'
  end
end
