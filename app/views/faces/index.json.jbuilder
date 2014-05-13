json.array!(@faces) do |face|
  json.extract! face, :id, :name, :quantity
  json.url face_url(face, format: :json)
end
