Rails.application.routes.draw do
  
  get 'foods/new'

  root                 'static_pages#homepage'
  get 'about'       => 'static_pages#about'
  get 'settings'    => 'static_pages#settings'
  get 'food' => 'foods#show'
  
  #This is a shortcut to all the routes
  
  resources :foods, only: [:show]
  
end
