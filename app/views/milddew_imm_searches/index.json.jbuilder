json.array!(@milddew_imm_searches) do |milddew_imm_search|
  json.extract! milddew_imm_search, :id, :search_id, :milddew_imm_id
  json.url milddew_imm_search_url(milddew_imm_search, format: :json)
end
