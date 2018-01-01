Rails.application.routes.draw do
  
  resources :restaurants
  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  root 'restaurants#index'
  
end
