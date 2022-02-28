Rails.application.routes.draw do
  ########## Root ##########
  root 'pages#home'
  ########## Pages ##########
  get 'back-end', to: 'pages#back_end'
  get 'front-end', to: 'pages#front_end'
  get 'home', to: 'pages#home'

  ########## Articles ##########
  resources :articles

  ########## Users ##########
  resources :users, except: [:new]
  get 'signup', to: 'users#new'

  ########## Sessions ##########
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  ########## Categories ##########
  resources :categories, except: [:destroy]
end
