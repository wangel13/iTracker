json.extract! status, :id, :description, :created_at, :updated_at
json.url status_url(status, format: :json)