Rails.application.routes.draw do

  root to: 'requests#index'

  resource :users, only: [:show]

  resources :requests, only: [:create, :show, :index, :destroy, :update]

  resources :leaderboard, only: [:index]


end
