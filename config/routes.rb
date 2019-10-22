Rails.application.routes.draw do
  resources :users, only: [:create]
  get 'create_account', to: 'users#new', as: :create_account

  resources :photos, only: [:index]
end
