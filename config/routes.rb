Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'careers', to: 'pages#careers'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
end
