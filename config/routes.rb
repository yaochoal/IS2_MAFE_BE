Rails.application.routes.draw do
  devise_for :usuarios
  get 'home/index'

  root to: "home#index"
  resources :scoreresources
  resources :scoreteachers
  resources :scorecomments
  resources :comments
  resources :resources
  resources :themes
  resources :teachers
  resources :courses
  resources :careers
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
