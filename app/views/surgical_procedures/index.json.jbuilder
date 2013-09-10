json.array!(@surgical_procedures) do |surgical_procedure|
  json.extract! surgical_procedure, :name
  json.url surgical_procedure_url(surgical_procedure, format: :json)
end
