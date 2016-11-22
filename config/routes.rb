Rails.application.routes.draw 

get "/auth/:provider/callback" => "sessions#create_from_omniauth"
