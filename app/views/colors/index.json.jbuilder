json.array!(@colors) do |color|
  json.extract! color, :code
  json.url color_url(color, format: :json)
end
