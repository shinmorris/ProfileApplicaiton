Rails.application.routes.draw do
  root :to =>'profiles#index'
  resources :messages, only: [:index, :create, :update, :destroy]
end
