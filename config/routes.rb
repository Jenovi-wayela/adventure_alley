Rails.application.routes.draw do
  root to: "experiences#index"
    # ...
    get 'dashboard/bookings', to: 'dashboard#bookings'
    get 'dashboard/listings', to: 'dashboard#listings'
    # ..
  devise_for :users, controllers: { registrations: 'registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  # Defines the root path route ("/")

  resources :experiences, only: [:index, :new, :create, :show]
end
