Rails.application.routes.draw do
  # get '/users' , to: 'users#index'
  # get '/books' , to: 'books#index'
  resources :users
  resources :books
  resources :transactions
end
