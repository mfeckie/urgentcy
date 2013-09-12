json.array!(@locations) do |location|
  json.extract! location, :name, :ordering_number
end
