Rails.application.routes.draw do
  
  

  devise_for :users

  resources :restaurants do 
  	resources :reviews, except: [:show, :index]
  end

  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  root 'restaurants#index'
  
end
