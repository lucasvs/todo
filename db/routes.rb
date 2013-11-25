DeviseExample::Application.routes.draw do

  

  resources :checklists

  resources :tasks

  resources :colors

  resources :lists

  devise_for :users, :admins

  get '/token' => 'home#token', as: :token

  resources :home, only: :index
  resources :admins, only: :index
  resources :users, only: :index

  root 'home#index'
  

end