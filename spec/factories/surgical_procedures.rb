# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :surgical_procedure do
    sequence(:name) { |n| "Surgical Procedure #{n}" }
  end
end
