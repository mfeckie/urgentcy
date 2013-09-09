json.array!(@surgical_specialties) do |surgical_specialty|
  json.extract! surgical_specialty, :name
  json.url surgical_specialty_url(surgical_specialty, format: :json)
end
