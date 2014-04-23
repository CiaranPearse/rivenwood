json.array!(@profiles) do |profile|
  json.extract! profile, :id, :first_name, :last_name, :postal, :user_id, :user_url, :bio, :avitar
  json.url profile_url(profile, format: :json)
end
