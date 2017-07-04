Rails.application.routes.draw do
  resources :words
   root :to => 'words#index'
    get '/signup' => 'users#new'
    post '/users' => 'users#create'
    get '/signin' => 'sessions#new'
    post '/signin' => 'sessions#create'
    get '/signout' => 'sessions#destroy'

  end
