json.array!(@messages) do |message|
  json.extract! message, :id, :text, :username
  json.url message_url(message, format: :json)
end
