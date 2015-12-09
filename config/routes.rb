Rails.application.routes.draw do
   devise_for :users, :controllers => { :registrations => 'registrations' }

  
  match 'results', to: 'exercises#results', via: 'post', as: 'results'
  get 'foods/new'
  get 'exercises/new'
 

  root                 'exercises#show'#on initial view, show the form to calculate
  get 'about'       => 'static_pages#about' 
  get 'settings'    => 'static_pages#settings'
  get 'food'        => 'foods#show'
  get 'exercise'    => 'exercises#show'
  get 'exercise_database' => 'exercises#database'
  get 'credits' => 'static_pages#credits'

end
