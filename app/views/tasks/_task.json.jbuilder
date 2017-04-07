json.extract! task, :id, :category_id, :name, :start_time, :description, :task_budget, :created_at, :updated_at
json.url task_url(task, format: :json)