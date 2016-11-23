Rails.application.routes.draw do
  
  get "/auth/:provider/callback" => "sessions#create_from_omniauth"

  resources :listings

  resources :users, only: [:show, :edit, :update, :destroy] 

  root to: "home#show"

end