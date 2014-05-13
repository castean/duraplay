json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :lastname, :second_lastname, :company_id, :area_id
  json.url employee_url(employee, format: :json)
end
