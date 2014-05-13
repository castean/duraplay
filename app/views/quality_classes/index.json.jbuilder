json.array!(@quality_classes) do |quality_class|
  json.extract! quality_class, :id, :name
  json.url quality_class_url(quality_class, format: :json)
end
