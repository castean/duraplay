json.array!(@framing_saws) do |framing_saw|
  json.extract! framing_saw, :id, :plant, :area, :product_id, :quality_id, :dimension_id, :batch, :sheet, :responsible
  json.url framing_saw_url(framing_saw, format: :json)
end
