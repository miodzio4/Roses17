json.array!(@flower_colors) do |flower_color|
  json.extract! flower_color, :id, :name, :description
  json.url flower_color_url(flower_color, format: :json)
end
