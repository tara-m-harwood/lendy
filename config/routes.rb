Rails.application.routes.draw do

  get 'users/test/:username', to: 'users#test'

  resources :lends
  resources :borrowers
  resources :items
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
