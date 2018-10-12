Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :communities
    end
  end
  resources :items, only: [:index]
  resources :users, only: [:show, :edit, :update, :destroy, :new, :create] do
    resources :items, only: [:show, :edit, :update, :new, :create, :destroy]
  end
end
