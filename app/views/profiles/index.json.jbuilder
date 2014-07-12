json.array!(@profiles) do |profile|
  json.extract! profile, :id, :full_name, :camera_type_id, :camera_model_name, :profession, :mobile_number
  json.url profile_url(profile, format: :json)
end
