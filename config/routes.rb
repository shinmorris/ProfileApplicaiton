Rails.application.routes.draw do
  devise_for :users
  root 'profiles#index'
  resources :messages, only: [:index, :create, :update, :destroy]
  resources :users,    only: [:edit, :update]
  resources :groups, only: [:new, :create, :edit, :update]
end
