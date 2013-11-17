json.array!(@tasks) do |task|
  json.extract! task, :title, :description, :date, :move, :color_id, :list_id
  json.url task_url(task, format: :json)
end
