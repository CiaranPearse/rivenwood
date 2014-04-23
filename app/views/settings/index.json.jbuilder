json.array!(@settings) do |setting|
  json.extract! setting, :id, :update_emails, :digest_emails, :promotional_emails, :user_id
  json.url setting_url(setting, format: :json)
end
