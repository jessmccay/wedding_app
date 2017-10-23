Rails.application.routes.draw do

  get '/redirect', to: 'calendar#redirect', as: 'redirect'
  get '/callback', to: 'calendar#callback', as: 'callback'
  resources :tasks
  get "tasks/:id/complete_task" => "tasks#complete_task"
  get '/calendars', to: 'calendar#calendars', as: 'calendars'
  resources :categories

  devise_for :users

  get '/events/:calendar_id', to: 'calendar#events', as: 'events', calendar_id: /[^\/]+/
  get '/calendar/calendars'

  get 'welcome/index'
  root 'welcome#index'

end
