Rails.application.routes.draw do
  namespace :companies do
    get 'internships/create'
    get 'internships/edit'
    get 'internships/destroy'
    get 'internships/index'
    get 'internships/show'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
