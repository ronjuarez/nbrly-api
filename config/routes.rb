Rails.application.routes.draw do

  root to: 'requests#index'

  resources :users, only: [:index, :show, :update]

  resources :requests, only: [:create, :show, :index, :destroy, :update]

  resources :leaderboard, only: [:index]

  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
end
