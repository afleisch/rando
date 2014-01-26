Rando::Application.routes.draw do
  root to: 'urls#index'

  get '/urls', to: 'urls#index'

  get '/urls/new', to: 'urls#new'

  post 'urls/new', to: 'urls#new'

  get 'urls/go/:random_string', to: 'urls#redirect'

  get "/urls/:id/edit", to: "urls#edit"

  get '/urls/:id', to: 'urls#show'

  post '/urls', to: 'urls#create'
end
