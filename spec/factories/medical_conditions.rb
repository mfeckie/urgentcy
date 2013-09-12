FactoryGirl.define do
  factory :medical_condition do
    sequence(:name) { |n| "name #{n}" }
  end
end