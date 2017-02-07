json.extract! user, :id, :name, :lastname, :work_hours, :created_at, :updated_at, :tasks, :teams
json.url user_url(user, format: :json)
