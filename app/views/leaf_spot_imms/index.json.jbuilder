json.array!(@leaf_spot_imms) do |leaf_spot_imm|
  json.extract! leaf_spot_imm, :id, :name, :description
  json.url leaf_spot_imm_url(leaf_spot_imm, format: :json)
end
