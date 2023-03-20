Rails.application.routes.draw do
  devise_for :companies
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
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
