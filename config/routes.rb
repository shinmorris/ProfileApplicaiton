Rails.application.routes.draw do
  devise_for :users
  root 'profiles#index'
  resources :groups,   only: [:index, :new, :create, :edit, :update] do
    resources :messages, only: [:index, :create, :update, :destroy]
  end
  resources :users,    only: [:index, :edit, :update]
end
