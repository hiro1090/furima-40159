Rails.application.routes.draw do
  resources :items, only: [:new, :create, :show, :edit, :update]
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'items#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
