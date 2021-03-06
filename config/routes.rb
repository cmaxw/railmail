Railmail::Application.routes.draw do
  devise_for :users
  resources :email_accounts

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  resources :users
  resources :sessions
  root "home#index"
end
