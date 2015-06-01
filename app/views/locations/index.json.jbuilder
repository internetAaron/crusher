json.array!(@locations) do |location|
  json.extract! location, :id, :name, :supervisor, :supervisor_email
  json.url location_url(location, format: :json)
end
