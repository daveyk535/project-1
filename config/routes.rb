BurgerBuddy::Application.routes.draw do
  resources :users
  get "burgers/new"
  
  root 'burgers#index'

  match '/signup', to: 'users#new', via: 'get'
end
