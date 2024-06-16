Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "pals#index"

  # Because having pals#index defined means a part of the +pal+ resource is defined,
  # Brick would not normally auto-create the other standard RESTful routes, so add
  # those back in so that we can still navigate to /pal.
  resources :pal
end
