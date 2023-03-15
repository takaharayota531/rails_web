Rails.application.routes.draw do
  namespace :main do
    get 'homes/index'
    get 'homes/new'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "main/homes#index"
end
