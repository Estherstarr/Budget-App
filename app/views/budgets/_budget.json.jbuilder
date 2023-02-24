json.extract! budget, :id, :name, :amount_cents, :user_id, :category_id, :created_at, :updated_at
json.url budget_url(budget, format: :json)
