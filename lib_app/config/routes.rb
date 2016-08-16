Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#index"

  get "/sign_in", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  get "users/:id", to: "users#show"

end