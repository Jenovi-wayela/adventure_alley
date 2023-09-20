Rails.application.routes.draw do
  get 'categories/show'
    # ...
    get 'dashboard/bookings', to: 'dashboard#bookings'
    get 'dashboard/listings', to: 'dashboard#listings'
    # ..
  devise_for :users, controllers: { registrations: 'registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")

  resources :experiences, only: [:index, :new, :create, :show]
  resources :categories, only: [:show]
  root to: "experiences#index"
end
