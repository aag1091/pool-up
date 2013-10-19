PoolUp::Application.routes.draw do
  
  resources :driver_journeys
  resources :passenger_journeys
  resources :journeys
  
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  get "home/index"
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

end
