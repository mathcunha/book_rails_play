Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :genres
  resources :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'books#index'
end
