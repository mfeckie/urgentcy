json.array!(@surgical_specialties) do |surgical_specialty|
  json.extract! surgical_specialty, :name
end
