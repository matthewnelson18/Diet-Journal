Rails.application.routes.draw do

  delete '/logout' => 'sessions#destroy', as: :logout
  resources :sessions, only: [:new, :create]

  root 'users#index'
  resources :users

  resources :meals

  resources :foods



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
