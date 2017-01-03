Rails.application.routes.draw do
  # Root
  root to: 'welcome#index'

  localized do
    get '/signup', to: 'users#new'
    post '/signup', to: 'users#create'
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'

    # Recipes
    resources :recipes, only: %i(create new show)

    # Users
    resources :users, only: %i(new show)

    # Welcome
    resources :welcome, only: %i(index)

    # Sessions
    resources :sessions, only: %i(new)
  end
end
