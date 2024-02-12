Rails.application.routes.draw do
  resources :users
  resources :feeds
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'feeds#index'
  # Defines the root path route ("/")
  # root "articles#index"
  get "/login", to: "users#login_form"
  post "/login", to: "users#login"
  post "/logout", to: "users#logout"
end
