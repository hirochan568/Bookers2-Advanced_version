Rails.application.routes.draw do
  
   devise_for :users
   root  'homes#top'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  get 'homes/about' => 'homes#about'
  
end