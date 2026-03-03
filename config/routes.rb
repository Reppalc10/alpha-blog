Rails.application.routes.draw do
  root "pages#home" # send root route to a controller
  get "about", to: "pages#about" # creates get request to route to about page
  resources :articles
  get "signup", to: "users#new"
  resources :users, except: [ :new ]
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
end
