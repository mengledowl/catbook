Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'

  resources :articles, only: [:index, :create]
  # post 'articles', to: 'articles#create', as: 'create_article'
end
