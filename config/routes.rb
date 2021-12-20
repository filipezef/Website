Rails.application.routes.draw do
  root 'pages#index'
  get 'about', to: 'pages#about'
  get 'new', to: 'pages#new' 
  get 'back-end', to: 'pages#back_end'
  get 'front-end', to: 'pages#front_end'
  resources :articles
end
