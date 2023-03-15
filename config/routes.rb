Rails.application.routes.draw do
  namespace :companies do
    get 'company_posts/create'
    get 'company_posts/edit'
    get 'company_posts/destroy'
    get 'company_posts/index'
    get 'company_posts/show'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
