Rails.application.routes.draw do
  devise_for :users
  root :to =>'profiles#index'
  resources :messages, only: [:index, :create, :update, :destroy]
end
