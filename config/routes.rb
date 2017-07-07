Rails.application.routes.draw do
  devise_for :users

  root 'users#index'

  resources :homes
  get '/homes' => 'homes#index'

  resources :users

  resources :products
end
