json.extract! department, :id, :name, :description, :status, :created_by, :updated_by, :created_at, :updated_at
json.url department_url(department, format: :json)
