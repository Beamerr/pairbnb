Rails.application.routes.draw do
  
  
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
  resources :listings

  get "/auth/:provider/callback" => "sessions#create_from_omniauth"

  resources :users, only: [:show, :edit, :update, :destroy] 

  root to: "home#show"

end