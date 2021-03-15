# frozen_string_literal: true

Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    member do
      get :following, :followers
    end
  end

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  post 'login', to: 'sessions#create'
  resources :users
  resources :sessions, only: %i[index new]
  resources :posts
  resources :followings

  root to: 'sessions#new'
end
