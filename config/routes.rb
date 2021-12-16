Rails.application.routes.draw do
  root 'pages#index'
  get 'about', to: 'pages#about'
  get 'css-html', to: 'pages#css_html'
  get 'js', to: 'pages#js'
  get 'python', to: 'pages#python'
  get 'rails', to: 'pages#rails'
  get 'coding', to: 'pages#coding'
  resources :articles
end
