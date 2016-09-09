Rails.application.routes.draw do

  resources :campers
  
  devise_for :users

  resources :users

  root 'static_pages#leaderboard'
  get 'static_pages/about', as: "about"
  get 'static_pages/contact', as: "contact"


end
