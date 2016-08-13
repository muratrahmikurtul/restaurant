Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :places
  #get 'places/:id', to: 'places#show'
  root 'places#index'
end
