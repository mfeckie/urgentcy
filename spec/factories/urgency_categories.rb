FactoryGirl.define do
  factory :urgency_category do
    sequence(:name) { |n| "name #{n}" }
    sequence(:number)
    sequence(:acceptable_wait_minutes)
    sequence(:acceptable_wait_hours)
  end
end