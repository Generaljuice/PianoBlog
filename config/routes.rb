Rails.application.routes.draw do
  resources :high_scores
  devise_for :users
  resources :posts
  root 'posts#index'


end
