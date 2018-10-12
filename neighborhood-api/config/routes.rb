Rails.application.routes.draw do
  resources :communities
  resources :items, only: [:index]
end
