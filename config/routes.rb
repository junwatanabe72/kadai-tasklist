Rails.application.routes.draw do
 
  root to: 'tasks#index'
  resources :tasks
  resources :users , only: [:show , :new , :create]

  get "login",     to: "sessions#new"
  post 'login',    to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
