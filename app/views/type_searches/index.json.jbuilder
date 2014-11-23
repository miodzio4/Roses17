json.array!(@type_searches) do |type_search|
  json.extract! type_search, :id, :search_id, :type_id
  json.url type_search_url(type_search, format: :json)
end
