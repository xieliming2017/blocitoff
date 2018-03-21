Rails.application.routes.draw do
  get 'items/create'

  get 'users/show'

  devise_for :users

  resources :users do
    resources :items, only: [:create]
  end

  root 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
