Rails.application.routes.draw do
  root "home#index"
  get "/home/about" => "home#about", as: :about
  # get "gifs/new" => "gifs#new", as: :new_gif
  resources :gifs
end
