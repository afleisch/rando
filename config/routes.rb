Rando::Application.routes.draw do
  root to: 'urls#index'

  get '/urls', to: 'urls#index'

  get '/urls/new', to: 'urls#new'

  get '/urls/:id', to: 'urls#show'

  post '/urls', to: 'urls#create'
end
