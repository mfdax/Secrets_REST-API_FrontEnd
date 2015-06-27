Rails.application.routes.draw do
  root 'signin' => 'sessions#new', as: :sign_in

  get '/' => 'secrets#index', as: :index_path
  get 'new_secret' => 'secrets#new', as: :new_secret
  post 'secrets' => 'secrets#create', as: :secrets

  get   'signup' => 'users#new', as: :sign_up
  post  'signup' => 'users#create', as: :users

  post 'auth' => 'sessions#create', as: :auth
  delete 'signout' => 'sessions#delete', as: :sign_out
end
