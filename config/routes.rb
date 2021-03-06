Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :destinations, only: [:index, :show, :create, :destroy]
  resources :trips, only: [:index, :show, :create, :destroy, :update]
  resources :users, only: [:index, :show, :create]
  resources :markers, only: [:index, :show, :create, :destroy, :update]

  post '/signup', to: 'users#create'
  post '/login', to: 'users#login'
  get '/getuser', to: 'users#find_user_id'

end
