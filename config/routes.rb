BurgerBuddy::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :reviews
  resources :restaurants
  resources :burgers
  
  match '/signup', to: 'users#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

  match '/review', to: 'reviews#new', via: 'get'

  root 'burgers#index'
  
end
