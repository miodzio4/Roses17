json.array!(@freeze_imms) do |freeze_imm|
  json.extract! freeze_imm, :id, :name, :description
  json.url freeze_imm_url(freeze_imm, format: :json)
end
