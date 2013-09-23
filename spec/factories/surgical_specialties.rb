# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :surgical_specialty do
    sequence(:name) { |n| "Surgical Specialty #{n}" }

  end
end
