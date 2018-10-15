Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do

      put 'users/:user_id/neighborhoods/:id/join', :to => 'users#join'

      put 'users/:user_id/neighborhoods/:id/leave', :to => 'users#leave'

      resources :neighborhoods, only: [:show, :create, :index] do
        resources :items, only: [:index]
        resources :users, only: [:index]
      end

      resources :items

      resources :users do
        resources :items, only: [:index]
        resources :neighborhoods, only: [:index, :update, :destroy]
      end
    end
  end
end
