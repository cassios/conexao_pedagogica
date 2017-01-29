Rails.application.routes.draw do
  resources :login, only: [:index, :create]

  delete '/logout', to: 'login#destroy'

  get 'home/index'

  resources :users
  resources :pedagogy_innovations

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
