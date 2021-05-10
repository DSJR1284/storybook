Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'application#welcome'  
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#new'
  post'/signup', to: 'users#create'  
  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post '/logout', to: 'sessions#logout'
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  

  resources :stories 
  resources :comments  
  
  resources :users do 
    resources :stories, only: [:index, :new, :create]
  end 
  
  resources :stories do 
    resources :comments, only: [:index, :new, :create, :show]
  end 

end
