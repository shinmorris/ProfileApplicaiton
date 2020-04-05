Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root  'top#index'
  resources :groups,   only: [:index, :new, :create, :edit, :update] do
    resources :messages, only: [:index, :create, :update, :destroy]
  end
  resources :users,    only: [:index, :edit, :update]
end
