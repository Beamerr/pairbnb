Rails.application.routes.draw do

get "/auth/:provider/callback" => "sessions#create_from_omniauth"

end