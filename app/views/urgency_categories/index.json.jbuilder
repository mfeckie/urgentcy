json.array!(@urgency_categories) do |urgency_category|
  json.extract! urgency_category, :name
  json.url urgency_category_url(urgency_category, format: :json)
end
