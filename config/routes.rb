Rails.application.routes.draw do
  root 'secrets#index'

  get 'new_secret' => 'secrets#new', as: :new_secret
  post 'secrets' => 'secrets#create', as: :secrets

  get   'signup' => 'users#new', as: :sign_up
  post  'signup' => 'users#create', as: :users

  get 'signin' => 'sessions#new', as: :sign_in
  post 'auth' => 'sessions#create', as: :auth
  delete 'sign_out' => 'sessions#delete', as: :sign_out
end
