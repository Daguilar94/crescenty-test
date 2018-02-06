Rails.application.routes.draw do
  resources :transactions
  resources :accounts
  resources :users
  devise_for :admins
  root 'sites#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
