json.array!(@thicknesses) do |thickness|
  json.extract! thickness, :id, :name, :inches, :milimiter
  json.url thickness_url(thickness, format: :json)
end
