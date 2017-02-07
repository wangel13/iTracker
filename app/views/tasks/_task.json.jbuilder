json.extract! task, :id, :status_id, :priority_id, :epic_id, :header, :body, :assigned_to_id, :is_trash, :estimate, :remaining_estimate, :created_at, :updated_at
json.url task_url(task, format: :json)