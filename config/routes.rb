Rails.application.routes.draw do

  resources :tasks
  get "tasks/:id/complete_task" => "tasks#complete_task"

  resources :categories
  resources :profiles
  devise_for :users

  get 'welcome/index'
  root 'welcome#index'

end
