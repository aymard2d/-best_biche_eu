Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # Defines the root path route ("/")
  # root "posts#index"
  resources :animals, only: %i[index show]

  resources :bookings, only: %i[create]

  namespace :owner do
    get 'bookings/accept'
    get 'bookings/decline'
    get 'dashboards/show'
    resources :animals, only: %i[new create]
    resources :bookings, only: [] do
      member do
        patch :accept
        patch :decline
      end
    end
    resource :dashboards, only: %i[show]
  end
end
