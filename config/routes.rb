Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]

  root '/', action: :welcome, controller: :sessions

  get 'login', action: :new, controller: :sessions
  post 'login', action: :create, controller: :sessions

  get 'logout', action: :destroy, controller: :sessions

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
