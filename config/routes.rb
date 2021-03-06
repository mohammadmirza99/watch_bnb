Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: :show

  # resources :watches, only: :show

  resources :watches do
    resources :requests, only: [:new, :create]
    #Added route to Wishlist
    resources :wishlists, only: [:create]
    #------
  end
  # resources :watches, only:[:index, :new, :create, :edit, :update, :delete]
  resources :requests, only: [:index, :edit, :update, :delete]
  # resources :users do
  #   resources :watches, only: [:new, :create, :edit, :update, :delete]
  #   resources :requests, only: [:new, :create, :edit, :update, :delete]
  # end

  # resources :watches, only: :show do
  #   resources :reviews, only: [:index, :new, :create]
  # end

  # resources :watches, only: :index


end

