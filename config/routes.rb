Rails.application.routes.draw do
  resources :reservations
  resources :cars
  resources :users
  resources :appointments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources "/login", to: "sessions#create"
  resources "/logout", to: "sessions#destroy"
  resources "/me", to: "users#show"
  resources "/signup", to: "users#create"
end
