Rails.application.routes.draw do

  resources :campers

  root 'welcome#hello'

  devise_for :users

  resources :users

end
