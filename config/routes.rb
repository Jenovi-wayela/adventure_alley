Rails.application.routes.draw do
  get 'dashboard/bookings'
  get 'dashboard/listings'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  # Defines the root path route ("/")
  root to: "experiences#index"
  resources :experiences, only: [:index, :new, :create]
end
