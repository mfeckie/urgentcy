json.array!(@surgical_procedures) do |surgical_procedure|
  json.extract! surgical_procedure, :name
end
