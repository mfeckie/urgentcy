# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "first_name #{n}" }
    sequence(:last_name) { |n| "last_name #{n}" }
    sequence(:email) { |n| "example_user#{n}@example.com" }
    password 'password'
  end
end
