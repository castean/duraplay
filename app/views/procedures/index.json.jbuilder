json.array!(@procedures) do |procedure|
  json.extract! procedure, :id, :name, :link_address, :department_id
  json.url procedure_url(procedure, format: :json)
end
