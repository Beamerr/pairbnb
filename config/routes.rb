Rails.application.routes.draw do
  
  get "/auth/:provider/callback" => "sessions#create_from_omniauth"

  resources :listings #before_action :require_login, only: [:new]

  resources :reservations

  resources :users, only: [:show, :edit, :update, :destroy] 

  root to: "home#index"

  resources :listings do
  	resources :reservations, only: [:create]
  end

  get '/preload' => 'reservations#preload'

  #get '/' => 'searches#search'

end