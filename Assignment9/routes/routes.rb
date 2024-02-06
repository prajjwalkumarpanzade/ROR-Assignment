Rails.application.routes.draw do
  resources :users
  resources :books
  resources :transactions
end
