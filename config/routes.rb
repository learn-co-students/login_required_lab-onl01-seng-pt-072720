Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: "sessions#new"
  post '/', to: "sessions#create"
  post '/', to: "sessions#destroy"
  get '/secrets/show', to: "secrets#show"

end
