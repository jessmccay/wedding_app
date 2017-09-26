json.extract! budget_page, :id, :budget, :amount_spent, :tasks_id, :created_at, :updated_at
json.url budget_page_url(budget_page, format: :json)