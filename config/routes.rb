Rails.application.routes.draw do
  resources :availabilities
  devise_for :users


  root to: 'home#index'
  get '/go' => 'home#go'
end
