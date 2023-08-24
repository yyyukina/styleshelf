Rails.application.routes.draw do
  get 'closets/index'
  devise_for :users
  get 'items/index'
  root to: "items#index"

  resources :closets, only: [:index, :new, :create]
end
