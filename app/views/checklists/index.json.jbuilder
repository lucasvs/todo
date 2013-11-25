json.array!(@checklists) do |checklist|
  json.extract! checklist, :description, :completed, :task_id
  json.url checklist_url(checklist, format: :json)
end
