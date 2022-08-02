Rails.application.routes.draw do
  resources :users, only: [:new, :create]

  root '/', action: :welcome, controller: :sessions

  get 'login', action: :new, controller: :sessions
  post 'login', action: :create, controller: :sessions

  get 'logout', action: :logout, controller: :sessions

  get 'welcome', action: :welcome, controller: :sessions

  get 'authorized', action: :page_requires_login, controller: :sessions

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
