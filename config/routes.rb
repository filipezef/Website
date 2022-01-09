Rails.application.routes.draw do
  root 'pages#index'
  get 'about', to: 'pages#about'
  get 'back-end', to: 'pages#back_end'
  get 'front-end', to: 'pages#front_end'
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
