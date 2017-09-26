Rails.application.routes.draw do

  resources :budget_pages
  resources :tasks
  get "tasks/:id/complete_task" => "tasks#complete_task"

  resources :categories

  devise_for :users

  get 'welcome/index'
  root 'welcome#index'

end
