Rails.application.routes.draw do
  get   'signup' => 'users#new', as: :sign_up
  post  'signup' => 'users#create', as: :users

  get 'signin' => 'sessions#new', as: :sign_in
  get 'auth' => 'sessions#create', as: :auth
  delete 'signout' => 'sessions#delete', as: :sign_out
end
