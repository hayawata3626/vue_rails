Rails.application.routes.draw do
  resource :sessions, only: [:new, :create, :destroy]
  devise_for :managers
  root "posts#index"
  get "/posts/new" => "posts#new"
  get "/posts/:id" => "posts#show"
  post "/posts" => "posts#create"
  get "/posts/:id/edit" => "posts#edit"
  post "/posts/:id/update" => "posts#update"
  post "/posts/:id/destroy" => "posts#destroy"
  get "/posts" => "posts#list"

  get "/users/index" => "users#index"
  get "/users/:id" => "users#show"
  get "/signup" => "users#new"
  post "/users/create" => "users#create"
  post "/users/:id/update" => "users#update"
  get "/users/:id/edit" => "users#edit"
  get "/users/:id/likes" => "users#likes"
  get "/users" => "users#list"

  get "/login" => "users#login_form"
  post "/login" => "users#login"
  post "/logout" => "users#logout"

  post "/likes/:post_id/create" => "likes#create"
  post "/likes/:post_id/destroy" => "likes#destroy"
end
