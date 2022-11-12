Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :recipes, only: [:index]
      resources :learning_resources, only: [:index]
      resources :users, only: [:create]
      resources :favorites, only: [:create]
    end
  end
end
