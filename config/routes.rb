Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "welcome#home"
  get "/answers", to: "questions#answers"
  get "/map", to: "coordinates#map"
  resources :coordinates, only: [:index]
end
