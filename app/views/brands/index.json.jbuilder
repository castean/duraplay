json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :code, :area_id
  json.url brand_url(brand, format: :json)
end
