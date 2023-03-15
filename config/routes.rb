Rails.application.routes.draw do
  namespace :company do
    get 'company_posts/create'
    get 'company_posts/edit'
    get 'company_posts/destroy'
    get 'company_posts/index'
    get 'company_posts/show'
  end
  
  namespace :user do
    get 'messages/show'
  end
  namespace :main do
    get 'pages/home'
    get 'pages/index'
    get 'pages/show'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "main/pages#index"
end
