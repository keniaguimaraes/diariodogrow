Rails.application.routes.draw do
  resources :cultivos
  devise_for :users
  resources :statuses
  resources :fotoperiodos
  resources :tipo_solos
  resources :tipo_sementes
  resources :especies
  resources :generos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  #get '/check.txt', to: proc {[200, {}, ['it_works']]}
  root 'home#index'
end


