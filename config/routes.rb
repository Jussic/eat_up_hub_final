Rails.application.routes.draw do
  resources :dishes
  root   'static_pages#home'
  get    '/about',   to: 'static_pages#about'
  get    '/home', to: 'static_pages#home'
  get    '/map', to: 'static_pages#map'

  get '/signup', to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources:users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
