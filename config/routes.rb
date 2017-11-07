Rails.application.routes.draw do
  resources :profiles
  resources :availabilities
  devise_for :users


  root to: 'home#index'


  # Home controller to handle in between routes
  get '/go' => 'home#go'
  get '/drive' => 'home#drive'

end
