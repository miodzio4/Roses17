json.array!(@flower_color_searches) do |flower_color_search|
  json.extract! flower_color_search, :id, :search_id, :flower_color_id
  json.url flower_color_search_url(flower_color_search, format: :json)
end
