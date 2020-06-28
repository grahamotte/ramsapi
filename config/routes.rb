Rails.application.routes.draw do
  root "home#index"
  match 'api/', to: "api#rand", via: [:get]
  match 'api/add', to: "api#add", via: [:post]
end
