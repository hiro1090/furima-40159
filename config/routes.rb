Rails.application.routes.draw do
  resources :items, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :users_transacts, only: [:index, :create]
  end

  devise_for :users

  root to: 'items#index'
end