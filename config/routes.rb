Rails.application.routes.draw do
  
  resources :camper_profiles

  root 'welcome#hello'

  devise_for :users

  resources :users

end
