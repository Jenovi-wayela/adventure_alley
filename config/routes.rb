Rails.application.routes.draw do

  devise_for :users
  root to: "experiences#index"

  get 'dashboard', to: 'dashboard#index', as: :dashboard


  resources :experiences, only: [:index, :new, :create, :show]
  resources :bookings, only: [:new, :create]
end