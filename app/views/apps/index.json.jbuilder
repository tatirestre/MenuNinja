json.array!(@apps) do |app|
  json.extract! app, :id, :email, :last_name, :first_name, :resume, :job_id, :user_id
  json.url app_url(app, format: :json)
end
