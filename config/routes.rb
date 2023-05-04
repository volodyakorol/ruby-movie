Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'

  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'

  resources :movies
  resources :comments, only: [:create]
end
