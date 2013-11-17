json.array!(@items) do |item|
  json.extract! item, :description, :check, :checklist_id
  json.url item_url(item, format: :json)
end
