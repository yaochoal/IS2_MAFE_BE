# == Route Map
#
#         Prefix Verb   URI Pattern                   Controller#Action
# scoreresources GET    /scoreresources(.:format)     scoreresources#index
#                POST   /scoreresources(.:format)     scoreresources#create
#  scoreresource GET    /scoreresources/:id(.:format) scoreresources#show
#                PATCH  /scoreresources/:id(.:format) scoreresources#update
#                PUT    /scoreresources/:id(.:format) scoreresources#update
#                DELETE /scoreresources/:id(.:format) scoreresources#destroy
#  scoreteachers GET    /scoreteachers(.:format)      scoreteachers#index
#                POST   /scoreteachers(.:format)      scoreteachers#create
#   scoreteacher GET    /scoreteachers/:id(.:format)  scoreteachers#show
#                PATCH  /scoreteachers/:id(.:format)  scoreteachers#update
#                PUT    /scoreteachers/:id(.:format)  scoreteachers#update
#                DELETE /scoreteachers/:id(.:format)  scoreteachers#destroy
#  scorecomments GET    /scorecomments(.:format)      scorecomments#index
#                POST   /scorecomments(.:format)      scorecomments#create
#   scorecomment GET    /scorecomments/:id(.:format)  scorecomments#show
#                PATCH  /scorecomments/:id(.:format)  scorecomments#update
#                PUT    /scorecomments/:id(.:format)  scorecomments#update
#                DELETE /scorecomments/:id(.:format)  scorecomments#destroy
#       comments GET    /comments(.:format)           comments#index
#                POST   /comments(.:format)           comments#create
#        comment GET    /comments/:id(.:format)       comments#show
#                PATCH  /comments/:id(.:format)       comments#update
#                PUT    /comments/:id(.:format)       comments#update
#                DELETE /comments/:id(.:format)       comments#destroy
#      resources GET    /resources(.:format)          resources#index
#                POST   /resources(.:format)          resources#create
#       resource GET    /resources/:id(.:format)      resources#show
#                PATCH  /resources/:id(.:format)      resources#update
#                PUT    /resources/:id(.:format)      resources#update
#                DELETE /resources/:id(.:format)      resources#destroy
#         themes GET    /themes(.:format)             themes#index
#                POST   /themes(.:format)             themes#create
#          theme GET    /themes/:id(.:format)         themes#show
#                PATCH  /themes/:id(.:format)         themes#update
#                PUT    /themes/:id(.:format)         themes#update
#                DELETE /themes/:id(.:format)         themes#destroy
#       teachers GET    /teachers(.:format)           teachers#index
#                POST   /teachers(.:format)           teachers#create
#        teacher GET    /teachers/:id(.:format)       teachers#show
#                PATCH  /teachers/:id(.:format)       teachers#update
#                PUT    /teachers/:id(.:format)       teachers#update
#                DELETE /teachers/:id(.:format)       teachers#destroy
#        courses GET    /courses(.:format)            courses#index
#                POST   /courses(.:format)            courses#create
#         course GET    /courses/:id(.:format)        courses#show
#                PATCH  /courses/:id(.:format)        courses#update
#                PUT    /courses/:id(.:format)        courses#update
#                DELETE /courses/:id(.:format)        courses#destroy
#        careers GET    /careers(.:format)            careers#index
#                POST   /careers(.:format)            careers#create
#         career GET    /careers/:id(.:format)        careers#show
#                PATCH  /careers/:id(.:format)        careers#update
#                PUT    /careers/:id(.:format)        careers#update
#                DELETE /careers/:id(.:format)        careers#destroy
#          users GET    /users(.:format)              users#index
#                POST   /users(.:format)              users#create
#           user GET    /users/:id(.:format)          users#show
#                PATCH  /users/:id(.:format)          users#update
#                PUT    /users/:id(.:format)          users#update
#                DELETE /users/:id(.:format)          users#destroy
# 

Rails.application.routes.draw do
  resources :contacts
  resources :best
  resources :scores
  resources :search
  resources :socials
  resources :tests
  resources :resourcespdfs
  resources :teacherspdfs
  post 'user_token' => 'user_token#create'
  devise_for :users 
  resources :comments
  resources :resources
  resources :teachers
  resources :courses
  resources :careers
  resources :users
  resources :register
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
