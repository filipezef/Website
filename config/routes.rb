Rails.application.routes.draw do
  ########## Root ##########
  root 'pages#home'

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
