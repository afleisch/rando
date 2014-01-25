Rando::Application.routes.draw do
  root to: 'urls#index'

  get '/urls', to: 'urls#index'
end
