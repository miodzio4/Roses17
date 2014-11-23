json.array!(@fragrance_searches) do |fragrance_search|
  json.extract! fragrance_search, :id, :search_id, :fragrance_id
  json.url fragrance_search_url(fragrance_search, format: :json)
end
