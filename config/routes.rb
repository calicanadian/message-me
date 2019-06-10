Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :chatrooms
  resources :sessions

  root 'chatrooms#index'
  get 'login', to: 'sessions#new', as: "login"
  post 'login', to: 'sessions#create', as: "log_in"
  delete 'logout', to: 'sessions#destroy', as: "logout"
  post 'message', to: 'messages#create', as: 'message'

  mouont ActionCable.server, at: '/cable'
end
