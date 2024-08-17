Rails.application.routes.draw do
  # get 'stores/index'
  get 'admin', to: 'pages#home', as: :admin_home
  resources :businesses
  resources :products
  resources :categories
  devise_for :users
  # get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")

  
  root 'stores#index', as: :store_index
  # root "posts#index"
end
