json.array!(@colors) do |color|
  json.extract! color, :id, :colorName
  json.url color_url(color, format: :json)
end
