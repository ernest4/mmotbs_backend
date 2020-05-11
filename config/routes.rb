# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :players#, only: [:index]
  resources :maps
  resources :units

  get 'session' => 'session#csrf_token'
  post 'session' => 'session#create'
  delete 'session' => 'session#destroy'

  # routing examples ----------------------------start
  # root 'home#index'
  # post '/' => 'home#index'

  # get 'auth/auth0/callback' => 'auth0#callback'
  # get 'auth/failure' => 'auth0#failure'
  # get 'auth/auth0/logout' => 'auth0#logout'
  # get 'auth/authenticated' => 'auth0#authenticated'
  # routing examples ------------------------------end

  # # admin wip
  # namespace :admin do
  #   get '/' => 'admin#index'
  # end

  # mount Sidekiq::Web => '/admin/sidekiq'
end
