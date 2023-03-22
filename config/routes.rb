Rails.application.routes.draw do
  # 管理者の登録
  get 'admins/sign_up', to: 'admins#new'
  devise_for :admins
  devise_for :company_accounts
  devise_for :companies
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
