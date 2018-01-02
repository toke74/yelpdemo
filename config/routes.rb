Rails.application.routes.draw do
  
  resources :reviews, except: [:show, :index]
  
  devise_for :users

  resources :restaurants

  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  root 'restaurants#index'
  
end
