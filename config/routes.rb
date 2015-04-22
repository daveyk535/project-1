BurgerBuddy::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :reviews
  resources :restaurants
  resources :burgers

  get '/search/restaurants', to: 'restaurants#search'
  
  match '/signup', to: 'users#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

  match '/review', to: 'reviews#new', via: 'get'

  root 'burgers#index'
  
end


Reports:

We need x, y, z
Last Mamogram


What is your med list?
What are you allergies?
Last routine screening/annual exam?
What is you blood type?


Reports for physicians
Diabetics
Summarize