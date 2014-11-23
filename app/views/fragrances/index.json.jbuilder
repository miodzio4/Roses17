json.array!(@fragrances) do |fragrance|
  json.extract! fragrance, :id, :name, :description
  json.url fragrance_url(fragrance, format: :json)
end
