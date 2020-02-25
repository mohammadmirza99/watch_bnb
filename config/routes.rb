Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :users do
    resources :watches, only: [:new, :create, :edit, :update, :delete]
    resources :requests, only: [:new, :create, :edit, :update, :delete]
    resources :reviews, only: [:create, :delete]
  end

  resources :watches, only: :show do
    resources :reviews,   only: [:index]
  end

  resources :watches
end

