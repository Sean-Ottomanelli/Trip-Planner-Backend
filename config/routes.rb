Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :destinations, only: [:index, :show, :create, :destroy]
  resources :trips, only: [:index, :show, :create, :destroy, :update]
  resources :users, only: [:index, :show, :create]
  resources :markers, only: [:index, :show, :create, :destroy, :update]
  resources :attractions, only: [:index, :show, :create, :destroy]
end
