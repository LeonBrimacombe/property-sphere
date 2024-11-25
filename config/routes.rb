Rails.application.routes.draw do
  devise_for :users
  root to: "properties#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :properties, only: %i[index show] do
    resources :saved_properties, only: %i[index destroy]
  end

  resources :postcodes, only: %i[index]
end
