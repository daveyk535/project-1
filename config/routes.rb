BurgerBuddy::Application.routes.draw do
  get "burgers/new"
  get "users/new"
  
  root 'burgers#index'

  match '/signup', to: 'users#new', via: 'get'
end
