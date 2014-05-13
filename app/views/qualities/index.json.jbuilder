json.array!(@qualities) do |quality|
  json.extract! quality, :id, :name, :area, :plant
  json.url quality_url(quality, format: :json)
end
