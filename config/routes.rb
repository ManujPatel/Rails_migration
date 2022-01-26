Rails.application.routes.draw do
  get 'books/index'
  get 'books/new'
  get 'books/create'
  get 'books/destroy'
  get 'authors/index'
  get 'authors/new'
  get 'authors/create'
  get 'authors/show'
  get 'authors/edit'
  get 'authors/update'
  get 'authors/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
