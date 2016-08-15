Rails.application.routes.draw do
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :places do
    resources :comments
  end
  resources :categories, only: [:show, :index]
  #get 'places/:id', to: 'places#show'
  root 'places#index'
end
