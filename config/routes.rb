Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users


  # Home controller to handle in between routes
  get '/go' => 'home#go'
  get '/drive' => 'home#drive'


  resources :availabilities

  # resource for profiles this only allows the current user to get to a profile and edit, if you're not signed in you can only view
  resources :user, only: [:show, :update], controller: :profiles
  #  resource vs recourses singular allows for just one profile and we tie it to the user id,
  #  if you use resources it adds profile/id/ for multiple users
  resource :profile


end
