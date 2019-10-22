Rails.application.routes.draw do
  resources :users, only: [:create]
  get 'create_account', to: 'users#new', as: :create_account

  resources :user_sessions, only: [:create]
  get 'sign_in', to: 'user_sessions#new', as: :sign_in
  post 'sign_out', to: 'user_sessions#destroy', as: :sign_out

  resources :photos, only: [:index]
end
