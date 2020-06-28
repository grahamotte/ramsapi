Rails.application.routes.draw do
  root "home#index"
  match 'api/', to: "api#rand", via: [:get]
  match 'api/', to: "api#add", via: [:post]
end
