Rails.application.routes.draw do
  match 'results', to: 'static_pages#results', via: 'post', as: 'results'
  get 'foods/new'
  get 'exercises/new'
 

  root                 'static_pages#homepage'
  get 'about'       => 'static_pages#about'
  get 'settings'    => 'static_pages#settings'
  get 'food'        => 'foods#show'
  get 'exercise'    => 'exercises#show'
  
 
  
  #This is a shortcut to all the routes
  
  resources :foods, only: [:show]
  resources :exercises, only: [:show]
  
end
