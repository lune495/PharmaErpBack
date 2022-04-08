Rails.application.routes.draw do  
  resources :roles
  resources :magasins
  resources :venteproduits
  resources :ventes
  resources :users
  resources :inventairestocks
  resources :produits
  resources :familles
   
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
