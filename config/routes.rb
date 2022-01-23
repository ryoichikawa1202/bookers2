Rails.application.routes.draw do

  get 'users/show'
  get 'users/edit'
  root to: 'homes#top'
  devise_for :users

  get 'homes/about' => "homes#about", as: 'about'

  resources :books, only: [:new, :index, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
