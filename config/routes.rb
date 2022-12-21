Rails.application.routes.draw do
  # get 'pets/index'
  # get 'pets/show'
  # get 'pets/edit'
  # get 'pets/new'
  resources :pets
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pets#index"
end
