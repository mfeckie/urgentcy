FactoryGirl.define do
  factory :medical_condition do
    sequence(:name) { |n| "Medical condition #{n}" }
  end
end