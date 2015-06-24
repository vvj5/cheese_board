Rails.application.routes.draw do
  resources :cheeses
  resources :users

  root 'users#index'


end
