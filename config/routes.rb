Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'application#welcome'  
  get '/signup', to: 'users#new'
  post'/signup', to: 'users#create'  
  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post '/logout', to: 'sessions#logout'
  get '/auth/:provider/callback', to: 'sessions#omniauth'

  resources :users do 
    resources :stories, only: [:new, :create,:index]
  end 
  
  resources :stories do 
    resources :comments, only: [:new, :create, :index, :show]
  end 

  resources :stories 
  resources :comments  


  
end
