Rails.application.routes.draw do
  resources :reviews
  resources :genres
  resources :authors
  resources :titles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end