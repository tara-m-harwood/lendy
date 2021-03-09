Rails.application.routes.draw do

  get 'users/testing/:id', to: 'users#testing'

  resources :lends
  resources :borrowers
  resources :items
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
