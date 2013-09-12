FactoryGirl.define do
  factory :location do
    sequence(:name) { |n| "name #{n}" }
    sequence(:ordering_number)
  end
end