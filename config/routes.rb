Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "welcome#home"
  get "/map", to: "coordinates#map"

  resources :questions, only: [:new, :create, :edit, :update, :destroy]
  get "/answers", to: "questions#answers"
  
  resources :answers
  resources :coordinates, only: [:index]

end
