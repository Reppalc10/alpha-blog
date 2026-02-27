Rails.application.routes.draw do
  root "pages#home" # send root route to a controller
  get "about", to: "pages#about" # creates get request to route to about page
  resources :articles, only: [ :show, :index, :new, :create, :edit, :update ]
end
