json.array!(@height_searches) do |height_search|
  json.extract! height_search, :id, :search_id, :height_id
  json.url height_search_url(height_search, format: :json)
end
