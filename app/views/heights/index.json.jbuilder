json.array!(@heights) do |height|
  json.extract! height, :id, :name, :description
  json.url height_url(height, format: :json)
end
