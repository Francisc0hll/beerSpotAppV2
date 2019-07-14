Rails.application.routes.draw do
  
  get 'locations/get_location'
  get 'locations/find_address'
  resources :beers
  resources :comments, only: [:create]
  resources :beer_spots

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'beer_spots#index'
end
