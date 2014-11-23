json.array!(@searches) do |search|
  json.extract! search, :id, :name, :flower_color_id, :milddew_imm_id, :leaf_spot_imm_id, :fragrance_id, :height_id, :freeze_imm_id, :type_id, :ADR
  json.url search_url(search, format: :json)
end
