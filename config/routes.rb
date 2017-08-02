Rails.application.routes.draw do
  root 'welcome#home'
  get 'welcome/about'

  resources :users

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end
