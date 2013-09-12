json.array!(@medical_conditions) do |medical_condition|
  json.extract! medical_condition, :name
end
