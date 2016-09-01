Rails.application.routes.draw do
  resources :fcc_profiles
  root 'welcome#hello'
  
  devise_for :users
  resources :users

end
