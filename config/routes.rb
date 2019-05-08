Rails.application.routes.draw do

  namespace :api do
    resources :users, only: [:index]
    resources :bumblefooks
    post '/users', to: 'users#createFavorite'
      post '/users/create', to: 'users#createUser'
  end

end
