Rando::Application.routes.draw do
  root to: 'urls#index'

  get '/urls', to: 'urls#index'

  get '/urls/new', to: 'urls#new'
end
