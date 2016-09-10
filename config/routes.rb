Rails.application.routes.draw do

  resources :campers

  devise_for :users

  resources :users

  root 'campers#leaderboard'

  get '/about', to: 'static_pages#about'


end
