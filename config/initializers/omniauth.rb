Rails.application.config.middleware.use OmniAuth::Builder do
      provider :facebook, '785331591604623', 'b4ab0957060632c06708f7e615708843'
end