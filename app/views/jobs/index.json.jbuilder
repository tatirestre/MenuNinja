json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :description, :state, :city, :compensation, :is_internal, :user_id
  json.url job_url(job, format: :json)
end
