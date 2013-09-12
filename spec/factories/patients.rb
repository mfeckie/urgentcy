# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :patient do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    sequence(:mrn)
    sequence(:date_of_birth) { Date.new((1950..2012).to_a.sample , (1..12).to_a.sample, (1..28).to_a.sample) }
    sequence(:ward_location) { |n| "ward_location #{n}" }
  end
end
