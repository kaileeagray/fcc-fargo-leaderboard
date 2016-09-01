Rails.application.routes.draw do
  root 'welcome#hello'
  
  devise_for :users
  resources :users

end
