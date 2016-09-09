Rails.application.routes.draw do

  resources :campers

  devise_for :users

  resources :users

  root 'static_pages#leaderboard'

  get '/about', to: 'static_pages#about'


end
