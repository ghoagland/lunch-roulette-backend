Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index]
      resources :restaurants, only: [:index]
      resources :user_restaurants, only: [:index]

    end
  end
end
