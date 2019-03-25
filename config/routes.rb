Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index]
      resources :restaurants, only: [:index]
      resources :user_restaurants, only: [:index, :create]
      post '/login', to: 'auth#create'
      post '/signup', to: 'users#create'
      get '/profile', to: 'users#profile'
      get '/search', to: 'yelp#search'
    end
  end
end
