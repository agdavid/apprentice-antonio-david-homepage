Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "welcome#home"
  get "/answers", to: "welcome#answers"
  get "/map", to: "welcome#map"
  resources :coordinates, only: [:index]
end
