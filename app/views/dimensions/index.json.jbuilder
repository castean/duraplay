json.array!(@dimensions) do |dimension|
  json.extract! dimension, :id, :name
  json.url dimension_url(dimension, format: :json)
end
