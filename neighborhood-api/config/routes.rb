Rails.application.routes.draw do
  resources :communities
  resources :items, only: [:index]
  resources :users, only: [:show, :edit, :update, :destroy, :new, :create] do
    resources :items, only: [:index, :edit, :update, :new, :create, :destroy]
  end
end
