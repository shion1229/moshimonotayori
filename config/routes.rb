Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html 
  resources :hello
  resources :toilets
  resources :toes
  resources :garbages
  resources :gabs
  resources :maps


  #resources :gabs

  get 'maps/index'
  root 'hello#index'
  resources :maps, only: [:index]

end


