json.array!(@freeze_imm_searches) do |freeze_imm_search|
  json.extract! freeze_imm_search, :id, :search_id, :freeze_imm_id
  json.url freeze_imm_search_url(freeze_imm_search, format: :json)
end
