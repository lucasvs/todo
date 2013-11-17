json.array!(@checklists) do |checklist|
  json.extract! checklist, :title
  json.url checklist_url(checklist, format: :json)
end
