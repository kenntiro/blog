Rails.application.routes.draw do
  
  namespace :admin do
    resources :users
    resources :wines

    root to: "users#index"
  end

  get 'users/index'

  get 'users/show'

  devise_for :users
  resources :users
  get 'homes/top' => 'homes#top'
  resources :wines,only:[:new,:index,:create,:edit,:update,:show,:destroy]
  root 'wines#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
