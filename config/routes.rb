Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
  # resources :articles do
  #   resources :comments
  # end
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to:'sessions#create'
  delete 'login', to: 'sessions#destroy'
  jsonapi_resources :users
  jsonapi_resources :articles do 
    jsonapi_related_resources :comments
  end
end
