Rails.application.routes.draw do
  namespace :company do
    get 'posts/create'
    get 'posts/edit'
    get 'posts/destroy'
    get 'posts/index'
    get 'posts/shineyoshimura'
    get 'company_posts/create'
    get 'company_posts/edit'
    get 'company_posts/destroy'
    get 'company_posts/index'
  end
  namespace :user do
    get 'messages/show'
  end
  namespace :main do
    get 'pages/home'
    get 'pages/index'
    get 'pages/show'
    get 'homes/index'
    get 'homes/new'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "main/homes#index"
end
