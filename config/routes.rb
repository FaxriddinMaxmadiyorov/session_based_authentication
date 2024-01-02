Rails.application.routes.draw do
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'home#index'
  resources :registrations, only: [:new,:create]
  resources :sessions, only: [:new, :create, :destroy]
end
