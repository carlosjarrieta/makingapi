Rails.application.routes.draw do
  root 'home#index'
  resources :personas
   get 'areas', to: 'areas#index'
   post 'user_token' => 'user_token#create'
   get 'users/current' => 'users#current'
   resources :users
end
