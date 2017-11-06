Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root 'home#index', as: 'authenticated_root'
  end

  root to: 'home#index'
end
