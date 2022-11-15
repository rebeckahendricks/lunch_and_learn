Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :recipes, only: [:index]
      resources :learning_resources, only: [:index]
      resources :users, only: [:create] do
        resources :login, only: [:create], controller: :users, action: :login
      end
      resources :favorites, only: [:create, :index, :destroy]
    end
  end
end
