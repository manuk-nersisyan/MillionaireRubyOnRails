Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  root 'questions#index', as: 'home'
  get '/top-points', to: 'games#top_points', as: :top_points
  resources :games
end
