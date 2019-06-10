Rails.application.routes.draw do
  resources :users
  resources :messages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :chatrooms
  resources :sessions
  root 'chatrooms#index'
  get 'login', to: 'sessions#new', as: "login"
end
