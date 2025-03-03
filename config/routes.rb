Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "artists" => "artists#index"
  get "artists/random" => "artists#index_random"
  get "artists/:id" => "artists#show"
  post "artists" => "artists#create"
  patch "artists/:id" => "artists#update"
  delete "artists/:id" => "artists#delete"

  get "songs" => "songs#index"
  get "songs/random" => "songs#index_random"
  get "songs/images/:id" => "songs#find_image"
  get "songs/:id" => "songs#show"
  post "songs" => "songs#create"
  patch "songs/:id" => "songs#update"
  delete "songs/:id" => "songs#delete"

  get "albums" => "albums#index"
  get "albums/random" => "albums#index_random"
  get "albums/:id" => "albums#show"
  post "albums" => "albums#create"
  patch "albums/:id" => "albums#update"
  delete "albums/:id" => "albums#delete"



  # get "/random" => "albums#random"

  # Defines the root path route ("/")
  # root "posts#index"
end
