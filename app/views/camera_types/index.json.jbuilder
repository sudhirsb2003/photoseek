json.array!(@camera_types) do |camera_type|
  json.extract! camera_type, :id, :name
  json.url camera_type_url(camera_type, format: :json)
end
