json.array!(@lists) do |list|
  json.extract! list, :title, :user_id
  json.url list_url(list, format: :json)
end
