BurgerBuddy::Application.routes.draw do
  get "burgers/new"
  get "users/new"
  
  root 'burgers#index'
  
end
