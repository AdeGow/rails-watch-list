Rails.application.routes.draw do
  # get 'lists/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'lists', to: 'lists#index'
  get 'lists/new', to: 'lists#new'
  post 'lists', to: 'lists#create'

  get 'lists/:id/bookmarks/new', to: 'bookmarks#new', as: :bookmarks_new
  post 'lists/:id/bookmarks', to: 'bookmarks#create', as: :bookmarks

  get 'lists/:id', to: 'lists#show', as: :list_show


end
