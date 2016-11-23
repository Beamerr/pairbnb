Rails.application.routes.draw do
  
  
  resources :listings

  # resources :articles

  # get "users/sign_up" => 'users#sign_up', :as => "user_sign_up"

  # get "users/:id" => 'users#show', :as => "user"
  
  get "/auth/:provider/callback" => "sessions#create_from_omniauth"

  resources :users, only: [:show, :edit, :update, :destroy] 

  root to: "home#show"

end