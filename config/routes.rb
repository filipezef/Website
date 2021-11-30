Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'galheta', to: 'pages#galheta'
  resources :articles
end
