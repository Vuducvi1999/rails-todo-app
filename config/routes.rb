Rails.application.routes.draw do
  root 'home#index'
  resources :projects do
    resources :tasks
  end

  # namespace :project do
  #   resources :tasks
  # end

  devise_for :users
  
end
