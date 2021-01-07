Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#home'

  get 'secrets/new'
  get '/secret' => 'secrets#show'

  get '/login' => '#sessions/new'
  post '/login' => '#sessions/create'
  post '/logout' => '#sessions/destroy'
end