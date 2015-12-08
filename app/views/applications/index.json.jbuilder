json.array!(@applications) do |application|
  json.extract! application, :id, :email, :last_name, :first_name, :resume
  json.url application_url(application, format: :json)
end
