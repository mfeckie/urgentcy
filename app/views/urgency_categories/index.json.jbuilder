json.array!(@urgency_categories) do |urgency_category|
  json.extract! urgency_category, :name
end
