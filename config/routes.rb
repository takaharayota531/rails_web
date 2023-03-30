Rails.application.routes.draw do
  namespace :companies do
    get 'accounts/new'
    get 'accounts/edit'
  end
  # ルートパスはどこでもいい
  root to: 'homes#index'
  devise_for :users, controllers: {

    omniauth_callbacks: "users/omniauth_callbacks"
  }
  devise_for :admins, controllers: {
    registrations: 'admins',
    sessions: 'admin_sessions'
  }

  post '/admins', to: 'admins#create'

  # devise_for :company_accounts
  # devise_for :companies
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
