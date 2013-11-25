DeviseExample::Application.routes.draw do

  resources :items

  resources :checklists

  resources :tasks

  resources :colors

  resources :lists

  devise_for :users, :admins

  get '/token' => 'home#token', as: :token

  resources :home, only: :index
  resources :admins, only: :index
  resources :users, only: :index
  match 'checklists/:id/complete' => 'checklists#complete', :as => :complete_task, via: 'get'

  root 'home#index'
  

end
