Rails.application.routes.draw do
  #get 'authors/index'
  #get 'authors/new'
  #get 'authors/create'
  #get 'authors/show'
  #get 'authors/edit'
  #get 'authors/update'
  #get 'authors/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'authors#index'
  resources:authors
  resources:books
  
  

  
  #resources:Books
  
  # Defines the root path route ("/")
  # root "articles#index"
end
