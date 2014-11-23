json.array!(@leaf_spot_imm_searches) do |leaf_spot_imm_search|
  json.extract! leaf_spot_imm_search, :id, :search_id, :leaf_spot_imm_id
  json.url leaf_spot_imm_search_url(leaf_spot_imm_search, format: :json)
end
