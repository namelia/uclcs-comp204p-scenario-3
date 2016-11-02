Rails.application.routes.draw do
  get 'references/new',  to: 'references#new'

  post 'references/new'
  
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :references
end
