Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
  resources :courses
  resources :users, only: [:show, :index]
end
