Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html 
  resources :hello
  resources :toilets
  resources :toes
  resources :garbages
  resources :gabs
  #resources :gabs

  get 'maps/index'
  root to: 'maps#index'
  resources :maps, only: [:index]

end


