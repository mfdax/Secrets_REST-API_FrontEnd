Rails.application.routes.draw do
  get 'secrets/index'

  get 'secrets/new'

  get 'secrets/create'

  get   'signup' => 'users#new', as: :sign_up
  post  'signup' => 'users#create', as: :users

  get 'signin' => 'sessions#new', as: :sign_in
  post 'auth' => 'sessions#create', as: :auth
  delete 'signout' => 'sessions#delete', as: :sign_out
end
