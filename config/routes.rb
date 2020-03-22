Rails.application.routes.draw do
  devise_for :users
  root 'profiles#index'
  get  'messages/:id' => 'messages#index'
  resources :messages, only: [:index, :create, :update, :destroy]
  resources :users,    only: [:index, :edit, :update]
  resources :groups, only: [:index, :new, :create, :edit, :update]
end
